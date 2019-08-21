CREATE PROCEDURE [sfin].[DimDistributorSourceQuery]
AS
begin
  -- Set the maximum number of levels in the HQ hierarchy
  declare @maxlevelsinhierarchy int
  set @maxlevelsinhierarchy = 4

  -- Drop temp table (if it exists) and clean up old data
    if exists (select 1 from tempdb.sys.objects where [name] = 'pk_TempDistributorHierarchyID')
      drop table #TempDistributorHierarchy

  truncate table sfin.LWDistributorParentRecordsAsChildren

  -- Create the temp table to store the ID and Rollup Type
  create table #TempDistributorHierarchy (
    ID char(18),
    RollupType varchar(15),
    Level int
    constraint [pk_TempDistributorHierarchyID] primary key ([Id], RollupType, Level)
  )

  -- Determine the rollup members and load their IDs into the temp table.  Need to do this for all the hierarchies, and have a row for every hierarchy a Distributor belongs to
  --  Level should be 1 for everything other than Distributor HQ's above the lowest level of HQ.

  insert into #TempDistributorHierarchy
    select distinct parentID, 'HQ', 1 
    from sfin.Account a 
      inner join sfin.RecordType r on a.RecordTypeId = r.Id 
    where isnull(parentId, '') <> '' 
      and r.DeveloperName = 'Distributor'
    order by parentID

  -- Loop throught the hierarchy levels of the hierarchy (don't need the full where clause since we're joining back to the temp table
  declare @i int
  set @i = 2 -- already loaded HQ1

  while @i <= @maxlevelsinhierarchy
  begin

    insert into #TempDistributorHierarchy
      select distinct parentID, 'HQ', @i from sfin.account a inner join #TempDistributorHierarchy tdh on tdh.ID = a.ID where tdh.RollupType = 'HQ' and Level = @i - 1 and isnull(parentId, '') <> ''

    set @i = @i + 1

  end
  
  -- Insert the account records of anything that has children into our temp table so we can set the various parent fields to be itself
  insert into sfin.LWDistributorParentRecordsAsChildren (Id,Name,gvp__Active__c,ParentId,OwnerId,CreatedDate,LastModifiedDate,gvp__Territory__c)
    select distinct a.Id, a.Name,a.gvp__Active__c,a.ParentId,a.OwnerId,a.CreatedDate,a.LastModifiedDate,a.gvp__Territory__c
    from sfin.Account a 
      inner join #TempDistributorHierarchy tdh on tdh.ID = a.Id

  -- Update to add the ID of the various parent's to the field that holds the parent's children
  -- Loop through the HQ levels
  set @i = 1

  while @i <= @maxlevelsinhierarchy
  begin

    update dprdac set
      dprdac.ParentId = tdh.ID
      from sfin.LWDistributorParentRecordsAsChildren dprdac
        inner join #TempDistributorHierarchy tdh on dprdac.Id = tdh.ID
      where tdh.RollupType = 'HQ' and Level = @i

    set @i = @i + 1
  end

  -- Query sfin.Account and union to our table that has a child record for each parent
select
    a.Id,
    a.Name,
    a.gvp__Active__c,
    case when isnull(a.OwnerId, '') <> '' then a.OwnerId else '-1' end as OwnerId,
    case when isnull(a.parentID, '') <> '' then a.parentID else '-1' end as parentID,
    a.gvp__Territory__c as TerritoryID,
    convert(varchar(23),a.CreatedDate,121) as CreatedDate,    
convert(varchar(23),a.LastModifiedDate,121) as LastModifiedDate,
    s.SourceID
  from sfin.account a 
    inner join sfin.recordtype r on a.RecordTypeId = r.id
    inner join source s on s.sourcename = 'Salesforce'
  where r.SobjectType = 'Account'
    and r.[developername] = 'Distributor'

  union all

  select
    a.Id,
    a.Name,
    a.gvp__Active__c,
    case when isnull(a.OwnerId, '') <> '' then a.OwnerId else '-1' end as OwnerId,
    case when isnull(a.parentID, '') <> '' then a.parentID else '-1' end as parentID,
    a.gvp__Territory__c as TerritoryID,
    convert(varchar(23),a.CreatedDate,121) as CreatedDate,    
convert(varchar(23),a.LastModifiedDate,121) as LastModifiedDate,
    s.SourceID
  from sfin.LWDistributorParentRecordsAsChildren a 
    inner join source s on s.sourcename = 'Salesforce'

end