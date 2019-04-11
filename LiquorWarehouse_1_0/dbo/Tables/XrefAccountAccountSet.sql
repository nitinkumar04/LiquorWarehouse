CREATE TABLE [dbo].[XrefAccountAccountSet]
(
  [LWAccountSKey] INT NOT NULL  DEFAULT -1, 
    [LWAccountSetSKey] INT NOT NULL DEFAULT -1, 
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_XRefAccountAccountSet_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_XRefAccountAccountSet_LWModifiedDate] DEFAULT (getdate()) NOT NULL, 
    CONSTRAINT [PK_XrefAccountAccountSet] PRIMARY KEY ([LWAccountSetSKey], [LWAccountSKey])
)
