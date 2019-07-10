CREATE VIEW [dbo].DimProduct as
  SELECT LWBrandSKey as LWProductSKey, BrandLN as ProductLN, 'Brand' as ProductLevel from DimBrand
  union
  SELECT LWLabelSKey as LWProductSKey, LabelLN as ProductLN, 'Label' as ProductLevel from DimLabel
  union
  SELECT LWItemSKey as LWProductSKey, ItemLN as ProductLN, 'Item' as ProductLevel from DimItem
