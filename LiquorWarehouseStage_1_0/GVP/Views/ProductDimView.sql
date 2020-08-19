CREATE VIEW [GVP].[ProductDimView] AS
SELECT
  ps.Id as ID,
  ps.Name as Name,
  'Product Set' as Granularity,
  null as Item9LEquivalent,
  null as ItemFullCaseEquivalent,
  null as ItemPrimaryEquivalent,
  null as ItemSecondaryEquivalent,
  null as ItemNumber,
  null as ItemUnits,
  ps.Id as ProductSetID,
  null as BrandID,
  null as ItemID,
  null as LabelID,
  null as SizeID,
  null as LabelSizeID,
  null as BrandSizeID,
  null as SupplierID,
  null as BrandName,
  null as ItemName,
  null as LabelName,
  null as SizeName,
  null as LabelSizeName,
  null as BrandSizeName,
  null as SupplierName,
  null as LabelType,
  null as BrandExternalID,
  null as ItemExternalID,
  null as LabelExternalID,
  null as SizeExternalID,
  null as LabelSizeExternalID,
  null as BrandSizeExternalID,
  null as SupplierAccountExternalID
FROM
  SFIn.gvp__Product_Set__c ps
UNION
SELECT
  i.Id as ID,
  i.Name as Name,
  'Item' as Granularity,
  i.gvp__X9L_Equivalent__c as Item9LEquivalent,
  0.0 as ItemFullCaseEquivalent,
  i.gvp__Units__c * s.gvp__Primary_Conversion__c as ItemPrimaryEquivalent,
  i.gvp__Units__c * s.gvp__Secondary_Conversion__c as ItemSecondaryEquivalent,
  i.gvp__Item_Number__c as ItemNumber,
  i.gvp__Units__c as ItemUnits,
  null as ProductSetID,
  b.Id as BrandID,
  i.Id as ItemID,
  l.Id as LabelID,
  s.Id as SizeID,
  l.Id + '-' + s.Id as LabelSizeID,
  b.Id + '-' + s.Id as BrandSizeID,
  sup.Id as SupplierID,
  b.Name as BrandName,
  i.Name as ItemName,
  l.Name as LabelName,
  s.Name as SizeName,
  trim(l.Name) + '-' + trim(s.Name) as LabelSizeName,
  trim(b.Name) + '-' + trim(s.Name) as BrandSizeName,
  sup.Name as SupplierName,
  l.gvp__Type__c as LabelType,
  b.gvp__Brand_Key__c as BrandExternalID,
  i.gvp__Item_Key__c as ItemExternalID,
  l.gvp__Label_Key__c as LabelExternalID,
  s.gvp__Size_Key__c as SizeExternalID,
  trim(l.gvp__Label_Key__c) + '-' + trim(s.gvp__Size_Key__c) as LabelSizeExternalID,
  trim(b.gvp__Brand_Key__c) + '-' + trim(s.gvp__Size_Key__c) as BrandSizeExternalID,
  sup.gvp__Account_Key__c as SupplierAccountExternalID
FROM
  [GVP].[gvp__Item__c] i
  join GVP.gvp__Label__c l on l.id = i.gvp__Label__c
  join GVP.gvp__Size__c s on s.id = i.gvp__Size__c
  join GVP.gvp__Brand__c b on b.id = l.gvp__Brand__c
  left join SFIN.Account sup on sup.id = b.gvp__Supplier__c
  inner Join [GVP].[RecordType] r on i.RecordTypeId = r.ID
UNION
Select
  l.Id + '-' + s.Id as ID,
  l.Name + '-' + s.Name as Name,
  'Label-Size' as Granularity,
  null as Item9LEquivalent,
  null as ItemFullCaseEquivalent,
  null as ItemPrimaryEquivalent,
  null as ItemSecondaryEquivalent,
  null as ItemNumber,
  null as ItemUnits,
  null as ProductSetID,
  b.Id as BrandID,
  null as ItemID,
  l.Id as LabelID,
  s.Id as SizeID,
  l.Id + '-' + s.Id as LabelSizeID,
  b.Id + '-' + s.Id as BrandSizeID,
  sup.Id as SupplierID,
  b.Name as BrandName,
  null as ItemName,
  l.Name as LabelName,
  s.Name as SizeName,
  trim(l.Name) + '-' + trim(s.Name) as LabelSizeName,
  trim(b.Name) + '-' + trim(s.Name) as BrandSizeName,
  sup.Name as SupplierName,
  l.gvp__Type__c as LabelType,
  b.gvp__Brand_Key__c as BrandExternalID,
  null as ItemExternalID,
  l.gvp__Label_Key__c as LabelExternalID,
  s.gvp__Size_Key__c as SizeExternalID,
  trim(l.gvp__Label_Key__c) + '-' + trim(s.gvp__Size_Key__c) as LabelSizeExternalID,
  trim(b.gvp__Brand_Key__c) + '-' + trim(s.gvp__Size_Key__c) as BrandSizeExternalID,
  sup.gvp__Account_Key__c as SupplierAccountExternalID
FROM
  [GVP].[gvp__Item__c] i
  join GVP.gvp__Label__c l on l.id = i.gvp__Label__c
  join GVP.gvp__Size__c s on s.id = i.gvp__Size__c
  join GVP.gvp__Brand__c b on b.id = l.gvp__Brand__c
  left join SFIN.Account sup on sup.id = b.gvp__Supplier__c
  inner Join [GVP].[RecordType] r on i.RecordTypeId = r.ID
UNION
Select
  b.Id + '-' + s.Id as ID,
  b.Name + '-' + s.Name as Name,
  'Brand-Size' as Granularity,
  null as Item9LEquivalent,
  null as ItemFullCaseEquivalent,
  null as ItemPrimaryEquivalent,
  null as ItemSecondaryEquivalent,
  null as ItemNumber,
  null as ItemUnits,
  null as ProductSetID,
  b.Id as BrandID,
  null as ItemID,
  null as LabelID,
  s.Id as SizeID,
  null as LabelSizeID,
  b.Id + '-' + s.Id as BrandSizeID,
  sup.Id as SupplierID,
  b.Name as BrandName,
  null as ItemName,
  null as LabelName,
  s.Name as SizeName,
  null as LabelSizeName,
  trim(b.Name) + '-' + trim(s.Name) as BrandSizeName,
  sup.Name as SupplierName,
  null as LabelType,
  b.gvp__Brand_Key__c as BrandExternalID,
  null as ItemExternalID,
  null as LabelExternalID,
  s.gvp__Size_Key__c as SizeExternalID,
  null as LabelSizeExternalID,
  trim(b.gvp__Brand_Key__c) + '-' + trim(s.gvp__Size_Key__c) as BrandSizeExternalID,
  sup.gvp__Account_Key__c as SupplierAccountExternalID
FROM
  [GVP].[gvp__Item__c] i
  join GVP.gvp__Label__c l on l.id = i.gvp__Label__c
  join GVP.gvp__Size__c s on s.id = i.gvp__Size__c
  join SFIN.gvp__Brand__c b on b.id = l.gvp__Brand__c
  left join SFIN.Account sup on sup.id = b.gvp__Supplier__c
  inner Join [GVP].[RecordType] r on i.RecordTypeId = r.ID
UNION
Select
  s.Id as ID,
  s.Name as Name,
  'Size' as Granularity,
  null as Item9LEquivalent,
  null as ItemFullCaseEquivalent,
  null as ItemPrimaryEquivalent,
  null as ItemSecondaryEquivalent,
  null as ItemNumber,
  null as ItemUnits,
  null as ProductSetID,
  null as BrandID,
  null as ItemID,
  null as LabelID,
  s.Id as SizeID,
  null as LabelSizeID,
  null as BrandSizeID,
  null as SupplierID,
  null as BrandName,
  null as ItemName,
  null as LabelName,
  s.Name as SizeName,
  null as LabelSizeName,
  null as BrandSizeName,
  null as SupplierName,
  null as LabelType,
  null as BrandExternalID,
  null as ItemExternalID,
  null as LabelExternalID,
  s.gvp__Size_Key__c as SizeExternalID,
  null as LabelSizeExternalID,
  null as BrandSizeExternalID,
  null as SupplierAccountExternalID
FROM
  [GVP].[gvp__Item__c] i
  join GVP.gvp__Label__c l on l.id = i.gvp__Label__c
  join GVP.gvp__Size__c s on s.id = i.gvp__Size__c
  join GVP.gvp__Brand__c b on b.id = l.gvp__Brand__c
  inner Join [GVP].[RecordType] r on i.RecordTypeId = r.ID
UNION
Select
  l.Id as ID,
  l.Name as Name,
  'Label' as Granularity,
  null as Item9LEquivalent,
  null as ItemFullCaseEquivalent,
  null as ItemPrimaryEquivalent,
  null as ItemSecondaryEquivalent,
  null as ItemNumber,
  null as ItemUnits,
  null as ProductSetID,
  b.Id as BrandID,
  null as ItemID,
  l.Id as LabelID,
  null as SizeID,
  null as LabelSizeID,
  null as BrandSizeID,
  sup.Id as SupplierID,
  b.Name as BrandName,
  null as ItemName,
  l.Name as LabelName,
  null as SizeName,
  null as LabelSizeName,
  null as BrandSizeName,
  sup.Name as SupplierName,
  l.gvp__Type__c as LabelType,
  b.gvp__Brand_Key__c as BrandExternalID,
  null as ItemExternalID,
  l.gvp__Label_Key__c as LabelExternalID,
  null as SizeExternalID,
  null as LabelSizeExternalID,
  null as BrandSizeExternalID,
  sup.gvp__Account_Key__c as SupplierAccountExternalID
FROM
  GVP.gvp__Label__c l
  join GVP.gvp__Brand__c b on b.id = l.gvp__Brand__c
  left join SFIN.Account sup on sup.id = b.gvp__Supplier__c
UNION
SELECT
  b.Id as ID,
  b.Name as Name,
  'Brand' as Granularity,
  null as Item9LEquivalent,
  null as ItemFullCaseEquivalent,
  null as ItemPrimaryEquivalent,
  null as ItemSecondaryEquivalent,
  null as ItemNumber,
  null as ItemUnits,
  null as ProductSetID,
  b.Id as BrandID,
  null as ItemID,
  null as LabelID,
  null as SizeID,
  null as LabelSizeID,
  null as BrandSizeID,
  sup.Id as SupplierID,
  b.Name as BrandName,
  null as ItemName,
  null as LabelName,
  null as SizeName,
  null as LabelSizeName,
  null as BrandSizeName,
  sup.Name as SupplierName,
  null as LabelType,
  b.gvp__Brand_Key__c as BrandExternalID,
  null as ItemExternalID,
  null as LabelExternalID,
  null as SizeExternalID,
  null as LabelSizeExternalID,
  null as BrandSizeExternalID,
  sup.gvp__Account_Key__c as SupplierAccountExternalID
FROM
  GVP.gvp__Brand__c b
  left join SFIN.Account sup on sup.id = b.gvp__Supplier__c
UNION
Select
  sup.Id as ID,
  sup.Name as Name,
  'Supplier' as Granularity,
  null as Item9LEquivalent,
  null as ItemFullCaseEquivalent,
  null as ItemPrimaryEquivalent,
  null as ItemSecondaryEquivalent,
  null as ItemNumber,
  null as ItemUnits,
  null as ProductSetID,
  null as BrandID,
  null as ItemID,
  null as LabelID,
  null as SizeID,
  null as LabelSizeID,
  null as BrandSizeID,
  sup.Id as SupplierID,
  null as BrandName,
  null as ItemName,
  null as LabelName,
  null as SizeName,
  null as LabelSizeName,
  null as BrandSizeName,
  sup.Name as SupplierName,
  null as LabelType,
  null as BrandExternalID,
  null as ItemExternalID,
  null as LabelExternalID,
  null as SizeExternalID,
  null as LabelSizeExternalID,
  null as BrandSizeExternalID,
  sup.gvp__Account_Key__c as SupplierAccountExternalID
FROM
  GVP.gvp__Brand__c b
  join GVP.Account sup on sup.id = b.gvp__Supplier__c
  inner join GVP.RecordType r on sup.RecordTypeId = r.ID
where
  r.SobjectType = 'Account'
  and r.DeveloperName in ('Fournisseur', 'Supplier');