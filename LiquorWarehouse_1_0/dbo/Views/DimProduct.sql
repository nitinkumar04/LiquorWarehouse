CREATE VIEW [dbo].DimProduct as
  SELECT LWBrandSKey as LWProductSKey, BrandID as ProductID, BrandLN as ProductLN, 'Brand' as ProductLevel from DimBrand
  union
  SELECT LWLabelSKey as LWProductSKey, LabelID as ProductID, LabelLN as ProductLN, 'Label' as ProductLevel from DimLabel
  union
  SELECT LWItemSKey as LWProductSKey, ItemID as ProductID, ItemLN as ProductLN, 'Item' as ProductLevel from DimItem
