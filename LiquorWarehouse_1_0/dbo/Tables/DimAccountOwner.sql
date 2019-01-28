CREATE TABLE [dbo].[DimAccountOwner] (
    [LWAccountOwnerSKey]       INT          IDENTITY (1, 1) NOT NULL,
    [AccountOwnerID]           char (18) NOT NULL DEFAULT '-1',
    [AccountOwnerLN]           VARCHAR (25) NOT NULL DEFAULT 'No Data',
    [LWAccountOwnerCountySKey] INT          NOT NULL DEFAULT -1,
    [LWSourceID]               INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]         DATETIME     NULL,
    [SourceModifiedDate]       DATETIME     NULL,
    [LWCreateDate]             DATETIME     CONSTRAINT [DF_DimAccountOwner_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]           DATETIME     CONSTRAINT [DF_DimAccountOwner_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWAccountOwnerSKey] PRIMARY KEY CLUSTERED ([LWAccountOwnerSKey] ASC)
);

