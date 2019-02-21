CREATE TABLE [dbo].[DimProductSet]
(
  [LWProductSetSKey] INT NOT NULL IDENTITY, 
    [ProductSetID] char(18) NOT NULL DEFAULT '-1', 
    [ProductSetLN] NVARCHAR(100) NOT NULL DEFAULT 'No Data', 
    [LWProductSetURL] NVARCHAR(100) NULL, 
    CONSTRAINT [PK_DimProductSet] PRIMARY KEY ([LWProductSetSKey]) 
)
