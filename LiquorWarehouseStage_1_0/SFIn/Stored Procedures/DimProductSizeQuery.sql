CREATE PROCEDURE SFIn.[DimProductSizeQuery] AS
begin
  create table #DimProductSize (
    ProductID               char(18)        not null    default('-1'),
    SizeID                  char(18)        not null    default('-1'),
    ProductSizeLN           varchar(250)    not null    default('No Data'),
    LWProductSizeLevel      varchar(20)     not null    default('No Data'),
    ProductSizeParentID     char(18)        null,
    SourceID                int             not null    default(-1),
    CreatedDate             datetime        null,
    LastModifiedDate        datetime        null
  )

  insert into #DimProductSize 
    select Id, gvp__Size__c, Name, 'Item', gvp__Label__c, s.SourceID, i.CreatedDate, i.LastModifiedDate 
    from sfin.gvp__Item__c i 
      inner join Source s on s.SourceName = 'Salesforce'

  insert into #DimProductSize
    select distinct l.Id, i.gvp__Size__c, l.Name + ' ' +  s.Name, 'Label / Size', l.Id, source.SourceID, l.CreatedDate, l.LastModifiedDate
    from sfin.gvp__Label__c l 
      inner join sfin.gvp__Item__c i on i.gvp__Label__c = l.Id
      inner join sfin.gvp__Size__c s on s.Id = i.gvp__Size__c
      inner join Source on SourceName = 'Salesforce'

  insert into #DimProductSize
    select Id, '-1', Name, 'Label', gvp__Brand__c, s.SourceID, l.CreatedDate, l.LastModifiedDate
    from sfin.gvp__Label__c l
      inner join Source s on s.SourceName = 'Salesforce'

  insert into #DimProductSize
    select distinct b.Id, i.gvp__Size__c, b.Name + ' ' +  s.Name, 'Brand / Size', b.Id, source.SourceID, b.CreatedDate, b.LastModifiedDate
    from sfin.gvp__Brand__c b
      inner join sfin.gvp__Label__c l on l.gvp__Brand__c = b.Id 
      inner join sfin.gvp__Item__c i on i.gvp__Label__c = l.Id
      inner join sfin.gvp__Size__c s on s.Id = i.gvp__Size__c 
      inner join Source on SourceName = 'Salesforce'

  insert into #DimProductSize
    select Id, '-1', Name, 'Brand', gvp__Supplier__c, s.SourceID, b.CreatedDate, b.LastModifiedDate
    from sfin.gvp__Brand__c b
      inner join Source s on s.SourceName = 'Salesforce'

  insert into #DimProductSize
    select a.Id, '-1', a.Name, 'Supplier', null, s.SourceID, a.CreatedDate, a.LastModifiedDate 
    from sfin.Account a 
      inner join sfin.RecordType r on a.RecordTypeId = r.ID
      inner join Source s on s.SourceName = 'Salesforce'
    where r.DeveloperName = 'Supplier'

  insert into #DimProductSize
    select ps.Id, '-1', ps.Name, 'Product Set', null, s.SourceID, ps.CreatedDate, ps.LastModifiedDate
    from sfin.gvp__Product_Set__c ps
      inner join Source s on s.SourceName = 'Salesforce'

  select
    ProductID,
    SizeID,
    ProductSizeLN,
    LWProductSizeLevel,
    ProductSizeParentID,
    convert(varchar(23),CreatedDate,121) as CreatedDate,
    convert(varchar(23),LastModifiedDate,121) as LastModifiedDate,
    SourceID
  from #DimProductSize

end
