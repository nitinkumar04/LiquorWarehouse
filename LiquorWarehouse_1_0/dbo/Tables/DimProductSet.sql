CREATE TABLE [dbo].[DimProductSet]
(
  [LWProductSetSKey] INT NOT NULL IDENTITY, 
    [ProductSetID] char(18) NOT NULL, 
    [ProductSetLN] NVARCHAR(100) NOT NULL, 
    [LWProductSetURL] NVARCHAR(100) NOT NULL, 
    CONSTRAINT [PK_DimProductSet] PRIMARY KEY ([LWProductSetSKey]) 
)
