CREATE VIEW [GVP].[ProductDimResults]
	AS SELECT
  ps.Id as ID,
  'Product Set' as Granularity
FROM
  SFIn.gvp__Product_Set__c ps
UNION
SELECT
  i.Id as ID,
  'Item' as Granularity
FROM
  [GVP].[gvp__Item__c] i
  join GVP.gvp__Label__c l on l.id = i.gvp__Label__c
  join GVP.gvp__Size__c s on s.id = i.gvp__Size__c
  join GVP.gvp__Brand__c b on b.id = l.gvp__Brand__c
  inner Join [GVP].[RecordType] r on i.RecordTypeId = r.ID
UNION
Select
  l.Id + '-' + s.Id as ID,
  'Label-Size' as Granularity
FROM
  [GVP].[gvp__Item__c] i
  join GVP.gvp__Label__c l on l.id = i.gvp__Label__c
  join GVP.gvp__Size__c s on s.id = i.gvp__Size__c
  join GVP.gvp__Brand__c b on b.id = l.gvp__Brand__c
  inner Join [GVP].[RecordType] r on i.RecordTypeId = r.ID
UNION
Select
  b.Id + '-' + s.Id as ID,
  'Brand-Size' as Granularity
FROM
  [GVP].[gvp__Item__c] i
  join GVP.gvp__Label__c l on l.id = i.gvp__Label__c
  join GVP.gvp__Size__c s on s.id = i.gvp__Size__c
  join SFIN.gvp__Brand__c b on b.id = l.gvp__Brand__c
  inner Join [GVP].[RecordType] r on i.RecordTypeId = r.ID
UNION
Select
  s.Id as ID,
  'Size' as Granularity
FROM
  [GVP].[gvp__Item__c] i
  join GVP.gvp__Label__c l on l.id = i.gvp__Label__c
  join GVP.gvp__Size__c s on s.id = i.gvp__Size__c
  join GVP.gvp__Brand__c b on b.id = l.gvp__Brand__c
  inner Join [GVP].[RecordType] r on i.RecordTypeId = r.ID
UNION
Select
  l.Id as ID,
  'Label' as Granularity
FROM
  GVP.gvp__Label__c l
  join GVP.gvp__Brand__c b on b.id = l.gvp__Brand__c
UNION
SELECT
  b.Id as ID,
  'Brand' as Granularity
FROM
  GVP.gvp__Brand__c b
UNION
Select
  sup.Id as ID,
  'Supplier' as Granularity
FROM
  GVP.gvp__Brand__c b
  join GVP.Account sup on sup.id = b.gvp__Supplier__c
  inner join GVP.RecordType r on sup.RecordTypeId = r.ID
where
  r.SobjectType = 'Account'
  and r.DeveloperName in ('Fournisseur', 'Supplier');