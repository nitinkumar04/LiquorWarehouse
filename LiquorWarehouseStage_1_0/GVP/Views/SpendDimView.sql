CREATE VIEW [GVP].[SpendDimView] AS
SELECT
  b.Id as ID,
  coalesce(
    b.gvp__Territory__c,
    b.gvp__Region__c,
    b.gvp__Division__c,
    b.gvp__Company__c,
    null
  ) as GeographyDimID,
  pd.ID as ProductDimID,
  null as AccountDimID
FROM
  GVP.gvp__Budget__c b
  left outer Join [GVP].[RecordType] r on b.RecordTypeId = r.ID
  left outer join GVP.ProductDimView pd on b.gvp__Brand__c = pd.ID
WHERE
  r.SobjectType = 'gvp__Budget__c'
UNION
SELECT
  bp.Id as ID,
  coalesce(
    bp.gvp__Territory__c,
    bp.gvp__Region__c,
    bp.gvp__Division__c,
    bp.gvp__Company__c,
    b.gvp__Territory__c,
    b.gvp__Region__c,
    b.gvp__Division__c,
    b.gvp__Company__c,
    null
  ) as GeographyDimID,
  pd.ID as ProductDimID,
  null as AccountDimID
FROM
  GVP.gvp__Budget_Plan__c bp
  left outer join GVP.gvp__Budget__c b on bp.gvp__Parent_Budget__c = b.Id
  left outer Join GVP.RecordType r on b.RecordTypeId = r.ID
  left outer join GVP.ProductDimView pd on coalesce(bp.gvp__Brand_lookup__c, b.gvp__Brand__c, null) = pd.ID
WHERE
  r.SobjectType = 'gvp__Budget__c'
UNION
SELECT
  p.Id as ID,
  coalesce(
    p.gvp__Distributor__c,
    p.gvp__Territory_Lookup__c,
    bp.gvp__Territory__c,
    bp.gvp__Region__c,
    bp.gvp__Division__c,
    bp.gvp__Company__c,
    b.gvp__Territory__c,
    b.gvp__Region__c,
    b.gvp__Division__c,
    b.gvp__Company__c,
    null
  ) as GeographyDimID,
  pd.ID as ProductDimID,
  p.gvp__Distributor__c as AccountDimID
FROM
  GVP.gvp__Program__c p
  left outer Join GVP.RecordType rp on p.RecordTypeId = rp.ID
  left outer join GVP.gvp__Budget_Plan__c bp on p.gvp__Budget_Plan__c = bp.Id
  left outer join GVP.gvp__Budget__c b on bp.gvp__Parent_Budget__c = b.Id
  left outer Join GVP.RecordType rb on b.RecordTypeId = rb.ID
  left outer join GVP.ProductDimView pd on coalesce(
    p.gvp__Item__c,
    p.gvp__Label__c,
    p.gvp__Brand_lookup__c,
    bp.gvp__Brand_lookup__c,
    b.gvp__Brand__c,
    null
  ) = pd.ID
where
  rp.SobjectType = 'gvp__Program__c'
  and rb.SobjectType = 'gvp__Budget__c';