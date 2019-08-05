CREATE TABLE [dbo].[DimRetailerSet]
(
  LWRetailerSetSKey		INT				IDENTITY (1, 1) NOT NULL,
  RetailerSetID			char(18)		NOT NULL DEFAULT '-1',
  RetailerSetLN			nvarchar(100)	NOT NULL DEFAULT 'No Data',
  [LWRetailerSetURL]	NVARCHAR(100)	NULL, 
  LWActiveFlag			int				not null default -1,
  [LWExistsInSFFlag]	INT				NOT NULL DEFAULT -1,
  [LWSourceID]			INT				NOT NULL DEFAULT -1,
  [SourceCreateDate]	DATETIME		NULL,
  [SourceModifiedDate]	DATETIME		NULL,
  [LWCreateDate]		DATETIME		CONSTRAINT [DF_DimRetailerSet_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]		DATETIME		CONSTRAINT [DF_DimRetailerSet_LWModifiedDate] DEFAULT (getdate()) NOT NULL, 
    CONSTRAINT [PK_DimRetailerSet] PRIMARY KEY ([LWRetailerSetSKey])

)
