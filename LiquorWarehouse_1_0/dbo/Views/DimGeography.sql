CREATE VIEW [dbo].DimGeography as
  SELECT LWDivisionSKey as LWGeographySKey, DivisionID as GeographyID, DivisionLN as GeographyLN, 'Division' as GeographyLevel from DimDivision
  union
  SELECT LWRegionSKey as LWGeographySKey, RegionID as GeographyID, RegionLN as GeographyLN, 'Region' as GeographyLevel from DimRegion
  union
  SELECT LWTerritorySKey as LWGeographySKey, TerritoryID as GeographyID, TerritoryLN as GeographyLN, 'Territory' as GeographyLevel from DimTerritory
