CREATE TABLE [dbo].[XRefItemProductSet]
(
  LWXRefItemProductSetSKey int        NOT NULL,
  LWItemSKey            int         NOT NULL DEFAULT -1,
  LWProductSetSKey      int         NOT NULL DEFAULT -1,
  [LWSourceID]          INT          NOT NULL DEFAULT -1,
  [SourceCreateDate]    DATETIME     NULL,
  [SourceModifiedDate]  DATETIME     NULL,
  [LWCreateDate]        DATETIME     CONSTRAINT [DF_XRefItemProductSet_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]      DATETIME     CONSTRAINT [DF_XRefItemProductSet_LWModifiedDate] DEFAULT (getdate()) NOT NULL, 
  CONSTRAINT [FK_XRefItemProductSet_DimItem] FOREIGN KEY (LWItemSKey) REFERENCES DimItem(LWItemSKey),
  CONSTRAINT [FK_XRefItemProductSet_DimProductSet] FOREIGN KEY (LWProductSetSKey) REFERENCES DimProductSet(LWProductSetSKey),
  CONSTRAINT [PK_XRefItemProductSet] PRIMARY KEY ([LWXRefItemProductSetSKey])
)
