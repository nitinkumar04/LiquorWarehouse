CREATE PROCEDURE [sfin].[DimRetailerSourceQuery]
AS
begin
  -- Set the maximum number of levels in the HQ hierarchy
  declare @maxlevelsinhierarchy int
  set @maxlevelsinhierarchy = 4

  -- Drop temp table (if it exists) and clean up old data
    if exists (select 1 from tempdb.sys.objects where [name] = 'pk_TempRetailerHierarchyID')
      drop table #TempRetailerHierarchy

  truncate table sfin.LWRetailerParentRecordsAsChildren

  -- Create the temp table to store the ID and Rollup Type
  create table #TempRetailerHierarchy (
    ID char(18),
    RollupType varchar(15),
    Level int
    constraint [pk_TempRetailerHierarchyID] primary key ([Id], RollupType, Level)
  )

  -- Determine the rollup members and load their IDs into the temp table.  Need to do this for all the hierarchies, and have a row for every hierarchy a retailer belongs to
  --  Level should be 1 for everything other than Retailer HQ's above the lowest level of HQ.
  insert into #TempRetailerHierarchy 
    select distinct gvp__Key_Account_Chain_1__c, 'KeyAccount1', 1 from sfin.Account where isnull(gvp__Key_Account_Chain_1__c, '') <> '' order by gvp__Key_Account_Chain_1__c

  insert into #TempRetailerHierarchy 
    select distinct gvp__Key_Account_Chain_2__c, 'KeyAccount2', 1 from sfin.Account where isnull(gvp__Key_Account_Chain_2__c, '') <> '' order by gvp__Key_Account_Chain_2__c

  insert into #TempRetailerHierarchy 
    select distinct gvp__Marketing_Group__c, 'MarketingGroup', 1 from sfin.Account where isnull(gvp__Marketing_Group__c, '') <> '' order by gvp__Marketing_Group__c

  insert into #TempRetailerHierarchy
    select distinct parentID, 'HQ', 1 
    from sfin.Account a 
      inner join sfin.RecordType r on a.RecordTypeId = r.Id 
    where isnull(parentId, '') <> '' 
      and r.DeveloperName in ('On_Premise', 'Off_Premise', 'Military', 'Transportation', 'Duty_Free', 'Combined', 'Sub_Jobber', 'Unknown', 'Other_Non_Retail') 
    order by parentID

  -- Loop throught the hierarchy levels of the hierarchy (don't need the full where clause since we're joining back to the temp table
  declare @i int
  set @i = 2 -- already loaded HQ1

  while @i <= @maxlevelsinhierarchy
  begin

    insert into #TempRetailerHierarchy
      select distinct parentID, 'HQ', @i from sfin.account a inner join #TempRetailerHierarchy trh on trh.ID = a.ID where trh.RollupType = 'HQ' and Level = @i - 1 and isnull(parentId, '') <> ''

    set @i = @i + 1

  end

  -- Insert the account records of anything that has children into our temp table so we can set the various parent fields to be itself
  insert into sfin.LWRetailerParentRecordsAsChildren
    select distinct a.* 
    from sfin.Account a 
      inner join #TempRetailerHierarchy trh on trh.ID = a.Id

  -- Update to add the ID of the various parent's to the field that holds the parent's children
  -- Key Account 1
  update aprdac set
    aprdac.gvp__Key_Account_Chain_1__c = trh.ID
    from sfin.LWRetailerParentRecordsAsChildren aprdac
      inner join #TempRetailerHierarchy trh on aprdac.Id = trh.ID
    where trh.RollupType = 'KeyAccount1'

  -- Key Account 2
  update aprdac set
    aprdac.gvp__Key_Account_Chain_2__c = trh.ID
    from sfin.LWRetailerParentRecordsAsChildren aprdac
      inner join #TempRetailerHierarchy trh on aprdac.Id = trh.ID
    where trh.RollupType = 'KeyAccount2'

  -- Marketing Group
  update aprdac set
    aprdac.gvp__Marketing_Group__c = trh.ID
    from sfin.LWRetailerParentRecordsAsChildren aprdac
      inner join #TempRetailerHierarchy trh on aprdac.Id = trh.ID
    where trh.RollupType = 'MarketingGroup'

  -- Loop through the HQ levels
  set @i = 1

  while @i <= @maxlevelsinhierarchy
  begin

    update aprdac set
      aprdac.ParentId = trh.ID
      from sfin.LWRetailerParentRecordsAsChildren aprdac
        inner join #TempRetailerHierarchy trh on aprdac.Id = trh.ID
      where trh.RollupType = 'HQ' and Level = @i

    set @i = @i + 1
  end

  -- Query sfin.Account and union to our table that has a child record for each parent
  select
    a.Id,
    a.Name,
    a.gvp__Active__c,
    a.gvp__DBA__c,
    case when isnull(a.OwnerId, '') <> '' then a.OwnerId else '-1' end as OwnerId,
    case when isnull(a.parentID, '') <> '' then a.parentID else '-1' end as parentID,
    case when isnull(a.RecordTypeId, '') <> '' then a.RecordTypeID else '-1' end as RecordTypeId,
    case when isnull(a.gvp__Marketing_Group_Code__c, '') <> '' then a.gvp__Marketing_Group_Code__c else '-1' end as gvp__Marketing_Group_Code__c,
    case when isnull(a.gvp__Status_Indicator__c, '') <> '' then a.gvp__Status_Indicator__c else 'No Data' end as gvp__Status_Indicator__c,
    a.gvp__Account_Key__c,
    a.gvp__BDN_ID__c,
    case when isnull(a.gvp__BDN_Account_Type__c, '') <> '' then a.gvp__BDN_Account_Type__c else '-1' end as gvp__BDN_Account_Type__c,
    a.gvp__BDN_Date_of_Data__c,
    a.gvp__BDN_Last_Update__c,
    a.gvp__BDN_AddDate__c,
    a.gvp__BDN_ChangeDate__c,
    a.gvp__BDN_Food_Type__c,
    case when isnull(a.gvp__BDN_Trade_Channel__c, '') <> '' then a.gvp__BDN_Trade_Channel__c else '-1' end as gvp__BDN_Trade_Channel__c,
    a.gvp__Consumer_Demo__c,
    case when isnull(a.gvp__Decision_Maker__c, '') <> '' then a.gvp__Decision_Maker__c else '-1' end as gvp__Decision_Maker__c,
    case 
      when isnull(a.gvp__Franchise__c, '') = '' then -1
      when a.gvp__Franchise__c = 'No' then 0
      when a.gvp__Franchise__c = 'Yes' then 1
      else -2 
    end as LWFranchiseFlag,
    a.gvp__Primary_Contact__c,
    a.gvp__Primary_Email__c,
    a.gvp__Company_Size_Code__c,
    a.gvp__Latitude_Longitude_Precision_Code__c,
    a.gvp__Latitude__c,
    a.gvp__Longitude__c,
    a.gvp__License_Number__c,
    case when isnull(a.gvp__MSA_Code__c, '') <> '' then a.gvp__MSA_Code__c else '-1' end as gvp__MSA_Code__c,
    a.gvp__Family_Owner_Code__c,
    a.gvp__Owner_State__c,
    a.gvp__Owner_State_FIPS_Code__c,
    a.gvp__Owner_County_FIPS_Code__c,
    a.gvp__Outlet_Number__c,
    a.gvp__Outlet_Place_Name__c,
    a.gvp__Store_FTE_s__c,
    a.gvp__Store_Number_of_Registers__c,
    a.gvp__Store_Square_Footage__c,
    a.gvp__Store_Volume_Annual__c,
    a.gvp__Store_Volume_Weekly__c,
    a.gvp__Dist_Acct_Number__c,
    case when isnull(a.gvp__Other_Rep__c, '') <> '' then a.gvp__Other_Rep__c else '-1' end as gvp__Other_Rep__c,
    case when isnull(a.gvp__Banner_Name__c, '') <> '' then a.gvp__Banner_Name__c else '-1' end as gvp__Banner_Name__c,
    case when isnull(a.gvp__Key_Account_Chain_1__c, '') <> '' then a.gvp__Key_Account_Chain_1__c else '-1' end as gvp__Key_Account_1_Chain__c,
    case when isnull(a.gvp__Key_Account_Chain_2__c, '') <> '' then a.gvp__Key_Account_Chain_2__c else '-1' end as gvp__Key_Account_2_Chain__c,
    case
      when isnull(a.gvp__Key_Account_Chain_Indicator__c, '') = '' then -1
      when a.gvp__Key_Account_Chain_Indicator__c = 'No' then 0
      when a.gvp__Key_Account_Chain_Indicator__c = 'Yes' then 1
      else -2
    end as LWKeyAccountChainFlag,
    a.gvp__Custom_1__c,
    a.gvp__Custom_2__c,
    a.gvp__Custom_3__c,
    case 
      when isnull(a.gvp__Beer_Indicator__c, '') = '' then -1
      when a.gvp__Beer_Indicator__c = 'Yes' then 1
      when a.gvp__Beer_Indicator__c = 'No' then 0
      else -2
    end as LWBeerFlag,
    case 
      when isnull(a.gvp__Liquor_Indicator__c, '') = '' then -1
      when a.gvp__Liquor_Indicator__c = 'Yes' then 1
      when a.gvp__Liquor_Indicator__c = 'No' then 0
      else -2
    end as LWLiquorFlag,
    case 
      when isnull(a.gvp__Wine_Indicator__c, '') = '' then -1
      when a.gvp__Wine_Indicator__c = 'Yes' then 1
      when a.gvp__Wine_Indicator__c = 'No' then 0
      else -2
    end as LWWineFlag,
    a.CreatedDate,
    a.LastModifiedDate,
    s.SourceID
  from sfin.account a 
    inner join sfin.recordtype r on a.RecordTypeId = r.id
    inner join source s on s.sourcename = 'Salesforce'
  where r.SobjectType = 'Account'
    and (r.[developername] not in ('Supplier', 'Distributor', 'Marketing_Group')
      and r.[DeveloperName] in ('On_Premise', 'Off_Premise', 'Military', 'Transportation', 'Duty_Free', 'Combined', 'Sub_Jobber', 'Unknown', 'Other_Non_Retail')
      and r.[name] not like ('%HQ%'))

  union all

  select
    a.Id,
    a.Name,
    a.gvp__Active__c,
    a.gvp__DBA__c,
    case when isnull(a.OwnerId, '') <> '' then a.OwnerId else '-1' end as OwnerId,
    case when isnull(a.parentID, '') <> '' then a.parentID else '-1' end as parentID,
    case when isnull(a.RecordTypeId, '') <> '' then a.RecordTypeID else '-1' end as RecordTypeId,
    case when isnull(a.gvp__Marketing_Group_Code__c, '') <> '' then a.gvp__Marketing_Group_Code__c else '-1' end as gvp__Marketing_Group_Code__c,
    case when isnull(a.gvp__Status_Indicator__c, '') <> '' then a.gvp__Status_Indicator__c else 'No Data' end as gvp__Status_Indicator__c,
    a.gvp__Account_Key__c,
    a.gvp__BDN_ID__c,
    case when isnull(a.gvp__BDN_Account_Type__c, '') <> '' then a.gvp__BDN_Account_Type__c else '-1' end as gvp__BDN_Account_Type__c,
    a.gvp__BDN_Date_of_Data__c,
    a.gvp__BDN_Last_Update__c,
    a.gvp__BDN_AddDate__c,
    a.gvp__BDN_ChangeDate__c,
    a.gvp__BDN_Food_Type__c,
    case when isnull(a.gvp__BDN_Trade_Channel__c, '') <> '' then a.gvp__BDN_Trade_Channel__c else '-1' end as gvp__BDN_Trade_Channel__c,
    a.gvp__Consumer_Demo__c,
    case when isnull(a.gvp__Decision_Maker__c, '') <> '' then a.gvp__Decision_Maker__c else '-1' end as gvp__Decision_Maker__c,
    case 
      when isnull(a.gvp__Franchise__c, '') = '' then -1
      when a.gvp__Franchise__c = 'No' then 0
      when a.gvp__Franchise__c = 'Yes' then 1
      else -2 
    end as LWFranchiseFlag,
    a.gvp__Primary_Contact__c,
    a.gvp__Primary_Email__c,
    a.gvp__Company_Size_Code__c,
    a.gvp__Latitude_Longitude_Precision_Code__c,
    a.gvp__Latitude__c,
    a.gvp__Longitude__c,
    a.gvp__License_Number__c,
    case when isnull(a.gvp__MSA_Code__c, '') <> '' then a.gvp__MSA_Code__c else '-1' end as gvp__MSA_Code__c,
    a.gvp__Family_Owner_Code__c,
    a.gvp__Owner_State__c,
    a.gvp__Owner_State_FIPS_Code__c,
    a.gvp__Owner_County_FIPS_Code__c,
    a.gvp__Outlet_Number__c,
    a.gvp__Outlet_Place_Name__c,
    a.gvp__Store_FTE_s__c,
    a.gvp__Store_Number_of_Registers__c,
    a.gvp__Store_Square_Footage__c,
    a.gvp__Store_Volume_Annual__c,
    a.gvp__Store_Volume_Weekly__c,
    a.gvp__Dist_Acct_Number__c,
    case when isnull(a.gvp__Other_Rep__c, '') <> '' then a.gvp__Other_Rep__c else '-1' end as gvp__Other_Rep__c,
    case when isnull(a.gvp__Banner_Name__c, '') <> '' then a.gvp__Banner_Name__c else '-1' end as gvp__Banner_Name__c,
    case when isnull(a.gvp__Key_Account_Chain_1__c, '') <> '' then a.gvp__Key_Account_Chain_1__c else '-1' end as gvp__Key_Account_1_Chain__c,
    case when isnull(a.gvp__Key_Account_Chain_2__c, '') <> '' then a.gvp__Key_Account_Chain_2__c else '-1' end as gvp__Key_Account_2_Chain__c,
    case
      when isnull(a.gvp__Key_Account_Chain_Indicator__c, '') = '' then -1
      when a.gvp__Key_Account_Chain_Indicator__c = 'No' then 0
      when a.gvp__Key_Account_Chain_Indicator__c = 'Yes' then 1
      else -2
    end as LWKeyAccountChainFlag,
    a.gvp__Custom_1__c,
    a.gvp__Custom_2__c,
    a.gvp__Custom_3__c,
    case 
      when isnull(a.gvp__Beer_Indicator__c, '') = '' then -1
      when a.gvp__Beer_Indicator__c = 'Yes' then 1
      when a.gvp__Beer_Indicator__c = 'No' then 0
      else -2
    end as LWBeerFlag,
    case 
      when isnull(a.gvp__Liquor_Indicator__c, '') = '' then -1
      when a.gvp__Liquor_Indicator__c = 'Yes' then 1
      when a.gvp__Liquor_Indicator__c = 'No' then 0
      else -2
    end as LWLiquorFlag,
    case 
      when isnull(a.gvp__Wine_Indicator__c, '') = '' then -1
      when a.gvp__Wine_Indicator__c = 'Yes' then 1
      when a.gvp__Wine_Indicator__c = 'No' then 0
      else -2
    end as LWWineFlag,
    a.CreatedDate,
    a.LastModifiedDate,
    s.SourceID
  from sfin.LWRetailerParentRecordsAsChildren a 
    inner join source s on s.sourcename = 'Salesforce'



end