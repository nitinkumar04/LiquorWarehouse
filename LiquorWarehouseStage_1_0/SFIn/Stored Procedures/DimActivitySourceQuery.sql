CREATE PROCEDURE SFIn.[DimActivitySourceQuery] as
begin
  create table #TempDimActivity (
    ID char(18),
    [Name] varchar(100),
    [Owner] char(18),
    [Type] varchar(50),
    [Group] varchar(50),
    CreatedDate datetime,
    ModifiedDate datetime,
    StartDate date,
    EndDate date
  )
  





end
