CREATE PROCEDURE [sfin].[DimRetailerSourceQuery]
AS
begin

  -- Create the temp table to store the ID and Rollup Type
  create table #TempRetailer (
    Id char(18), 
    RollupType varchar(15)
    constraint [pk_TempRetailerID] primary key ([Id])
  )

  -- Determine the rollup members and load their IDs into the temp table
  insert into #TempRetailer 
    select distinct gvp__Key_Account_Chain_1__c, 'KeyAccount1' from sfin.Account order by gvp__Key_Account_Chain_1__c

  insert into #TempRetailer 
    select distinct gvp__Key_Account_Chain_2__c, 'KeyAccount2' 
    from sfin.Account 
    where gvp__Key_Account_Chain_2__c not in (select Id from #TempRetailer) 
    order by gvp__Key_Account_Chain_2__c

  insert into #TempRetailer 
    select distinct gvp__Marketing_Group__c, 'MarketingGroup' 
    from sfin.Account 
    where gvp__Marketing_Group__c not in (select Id from #TempRetailer) 
    order by gvp__Marketing_Group__c


  -- TODO:  The logic for HQ won't work for higher levels of the hierarchy, rethink this code.
  insert into #TempRetailer 
    select distinct a.parentid, 'HQ' 
    from sfin.Account a
      inner join sfin.RecordType r on a.RecordTypeId = r.ID
    where ParentId not in (select Id from #TempRetailer) 
      and r.DeveloperName = 'Distributor'
    order by ParentId

  -- The query
  -- TODO:  This should load into a temp table so we can update the parentid, key account fields, etc. to tie the child record to the parent record
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
    or 
      a.Id in (select Id from #TempRetailer)

  -- TODO:  Add update logic to tie the child version of the record to the parent version (parent id, key account 1, etc.)

  --drop table #TempRetailer

end