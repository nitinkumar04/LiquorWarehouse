CREATE TABLE [dbo].[XRefProductSizeProductSet]
(
  [LWProductSizeSKey]	INT NOT NULL	DEFAULT -1, 
  [LWProductSetSKey]	INT NOT NULL	DEFAULT -1, 
  LWProductSetLevel		nvarchar(100)	not null default '-',
  LWProductSetGroupBy	nvarchar(100)	not null default '-',
  [LWSourceID]			INT				NOT NULL DEFAULT -1,
  [LWCreateDate]		DATETIME		CONSTRAINT [DF_XRefProductSizeProductSet_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]		DATETIME		CONSTRAINT [DF_XRefProductSizeProductSet_LWModifiedDate] DEFAULT (getdate()) NOT NULL, 
  CONSTRAINT [PK_XRefProductSizeProductSet] PRIMARY KEY ([LWProductSizeSKey], [LWProductSetSKey])
)
