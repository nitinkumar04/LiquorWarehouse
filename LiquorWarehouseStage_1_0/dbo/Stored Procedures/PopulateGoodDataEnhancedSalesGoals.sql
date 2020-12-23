create procedure PopulateGoodDataEnhancedSalesGoals as
begin
  declare @projectid varchar(32)
  
  set @projectid = (select top 1 gvp__Project_Id__c  from sfin.gvp__Analytics_Settings__c where gvp__Project_Id__c<> '*')

  truncate table GoodDataObjectID
    
  insert into GoodDataObjectID
    select @projectid, c.name, convert(int, gvp__Object_Id__c + afm.gvp__Attribute_ID_Offset__c) 
    from sys.columns c 
      inner join sys.views v on v.object_id = c.object_id
      inner join sfin.gvp__Analytics_Field_Matrix__mdt afm on afm.MasterLabel = c.name
      inner join sfin.gvp__Analytics_Field__c af on af.gvp__Field_Identifier__c = afm.gvp__Attribute_Identifier__c
    where v.name = 'MasterGoal' 

  declare @i int
  declare @numcolumns int
  declare @currentcolumn varchar(100)
  declare @currentcolumnOID varchar(10)
  declare @GoodDataElementIDSQL varchar(4000)
  declare @GoodDataSalesGoalPlanFieldSQL varchar(4000)
  
  set @i = 1
  set @numcolumns = (select count(1) from GoodDataObjectID)

  truncate table GoodDataElementID
  truncate table GoodDataSalesGoalPlanField

  while @i <= @numcolumns
  begin
    select @currentcolumn = fieldname, @currentcolumnOID = GDObjectID from GoodDataObjectID where id = @i

    set @GoodDataElementIDSQL = 
      'insert into GoodDataElementID
        select distinct ''' + @projectid + ''', ''' + @currentcolumn + ''', ''' + @currentcolumnOID + ''', ' + @currentcolumn + ', null
        from MasterGoal 
        where isnull(' + @currentcolumn + ', '''') <> '''''

    --print (@GoodDataElementIDSQL)
    exec (@GoodDataElementIDSQL)

    set @GoodDataSalesGoalPlanFieldSQL = 
      'insert into GoodDataSalesGoalPlanField
        select gvp__Sales_Goal_Plan__c, ''' + @currentcolumn + ''', ''filter'', ' + @currentcolumn + '
        from MasterGoal 
        where isnull(' + @currentcolumn + ', '''') <> '''''

    --print (@GoodDataSalesGoalPlanFieldSQL)
    exec (@GoodDataSalesGoalPlanFieldSQL)

    set @i = @i + 1
  end
  
  -- Insert the Goal Level attributes
  insert into GoodDataObjectID 
    select distinct @projectid, af.Name, convert(int, gvp__Object_Id__c + afm.gvp__Attribute_ID_Offset__c)
    from MasterGoal mg
      inner join sfin.gvp__Analytics_Field__c af on mg.gvp__Goal_Level__c = af.gvp__Field_Identifier__c
      inner join sfin.gvp__Analytics_Field_Matrix__mdt afm on afm.gvp__Attribute_Identifier__c = af.gvp__Field_Identifier__c

  insert into GoodDataSalesGoalPlanField
    select distinct gvp__Sales_Goal_Plan__c, af.Name, 'attribute1', null
    from MasterGoal mg
      inner join sfin.gvp__Analytics_Field__c af on mg.gvp__Goal_Level__c = af.gvp__Field_Identifier__c

  -- Insert the secondary attributes
  insert into GoodDataObjectID 
    select distinct @projectid, af.Name, convert(int, gvp__Object_Id__c + afm.gvp__Attribute_ID_Offset__c)
    from MasterGoal mg
      inner join sfin.gvp__Analytics_Field__c af on mg.gvp__Secondary_Attribute__c = af.gvp__Field_Identifier__c
      inner join sfin.gvp__Analytics_Field_Matrix__mdt afm on afm.gvp__Attribute_Identifier__c = af.gvp__Field_Identifier__c

  insert into GoodDataSalesGoalPlanField
    select distinct gvp__Sales_Goal_Plan__c, af.Name, 'attribute2', null
    from MasterGoal mg
      inner join sfin.gvp__Analytics_Field__c af on mg.gvp__Secondary_Attribute__c = af.gvp__Field_Identifier__c

  -- Insert the metrics    
  insert into GoodDataObjectID 
    select distinct @projectid, gvp__Reported_Result_Object_Id__c, gvp__Reported_Result_Object_Id__c
    from MasterGoal

  insert into GoodDataSalesGoalPlanField
    select distinct gvp__Sales_Goal_Plan__c, gvp__Reported_Result_Object_Id__c, 'metric', gvp__Reported_Result__c
    from MasterGoal

end