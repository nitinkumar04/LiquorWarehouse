CREATE TABLE [dbo].[DimProductSet]
(
  [LBProductSetSKey] INT NOT NULL IDENTITY, 
    [ProductSetID] char(18) NOT NULL, 
    [ProductSetLN] NVARCHAR(100) NOT NULL, 
    [LBProductSetURL] NVARCHAR(100) NOT NULL, 
    CONSTRAINT [PK_DimProductSet] PRIMARY KEY ([LBProductSetSKey]) 
)
