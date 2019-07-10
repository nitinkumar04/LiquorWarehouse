CREATE VIEW [dbo].DimProduct as
  SELECT LWBrandSKey as LWProductSKey, BrandName as ProductName from DimBrand
  union
  SELECT LWLabelSKey as LWProductSKey, LabelName as ProductName from DimLabel
  union
  SELECT LWItemSKey as LWProductSKey, ItemName as ProductName from DimItem
