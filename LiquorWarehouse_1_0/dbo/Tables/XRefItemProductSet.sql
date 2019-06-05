CREATE TABLE [dbo].[XRefItemProductSet]
(
  [LWItemSKey] INT NOT NULL  DEFAULT -1, 
  [LWProductSetSKey] INT NOT NULL DEFAULT -1, 
  LWProductSetLevel nvarchar(100) not null default '-',
  LWProductSetGroupBy nvarchar(100) not null default '-',
  [LWSourceID]         INT          NOT NULL DEFAULT -1,
  [SourceCreateDate]   DATETIME     NULL,
  [SourceModifiedDate] DATETIME     NULL,
  [LWCreateDate]       DATETIME     CONSTRAINT [DF_XRefItemProductSet_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]     DATETIME     CONSTRAINT [DF_XRefItemProductSet_LWModifiedDate] DEFAULT (getdate()) NOT NULL, 
  CONSTRAINT [PK_XrefItemProductSet] PRIMARY KEY ([LWProductSetSKey], [LWItemSKey])
)
