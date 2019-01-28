CREATE TABLE [dbo].[DimAccountOwner] (
    [LBAccountOwnerSKey]       INT          IDENTITY (1, 1) NOT NULL,
    [AccountOwnerID]           char (18) NOT NULL DEFAULT '-1',
    [AccountOwnerLN]           VARCHAR (25) NOT NULL DEFAULT 'No Data',
    [LBAccountOwnerCountySKey] INT          NOT NULL DEFAULT -1,
    [LBSourceID]               INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]         DATETIME     NULL,
    [SourceModifiedDate]       DATETIME     NULL,
    [LBCreateDate]             DATETIME     CONSTRAINT [DF_DimAccountOwner_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]           DATETIME     CONSTRAINT [DF_DimAccountOwner_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBAccountOwnerSKey] PRIMARY KEY CLUSTERED ([LBAccountOwnerSKey] ASC)
);

