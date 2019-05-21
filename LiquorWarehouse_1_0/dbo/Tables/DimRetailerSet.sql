CREATE TABLE [dbo].[DimRetailerSet]
(
  LWRetailerSetSKey   INT  NOT NULL,
  RetailerSetID       char(18) not null,
  RetailerSetLN       nvarchar(100) not null,
  [LWSourceID]         INT          NOT NULL DEFAULT -1,
  [SourceCreateDate]   DATETIME     NULL,
  [SourceModifiedDate] DATETIME     NULL,
  [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimRetailerRetailerSet_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimRetailerRetailerSet_LWModifiedDate] DEFAULT (getdate()) NOT NULL, 
    CONSTRAINT [PK_DimRetailerSet] PRIMARY KEY ([LWRetailerSetSKey])

)
