CREATE TABLE [dbo].[XrefRetailerRetailerSet]
(
  [LWRetailerSKey] INT NOT NULL  DEFAULT -1, 
    [LWRetailerSetSKey] INT NOT NULL DEFAULT -1, 
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_XRefAccountAccountSet_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_XRefAccountAccountSet_LWModifiedDate] DEFAULT (getdate()) NOT NULL, 
    CONSTRAINT [FK_XRefRetailerRetailerSet_DimAccount] FOREIGN KEY (LWRetailerSKey) REFERENCES DimRetailer(LWRetailerSKey),
    CONSTRAINT [FK_XRefRetailerRetailerSet_DimAccountSet] FOREIGN KEY (LWRetailerSetSKey) REFERENCES DimRetailerSet(LWRetailerSetSKey),
    CONSTRAINT [PK_XrefRetailerRetailerSet] PRIMARY KEY ([LWRetailerSetSKey], [LWRetailerSKey])
)
