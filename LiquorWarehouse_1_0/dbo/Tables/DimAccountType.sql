CREATE TABLE [dbo].[DimAccountType] (
    [LWAccountTypeSKey]  INT          IDENTITY (1, 1) NOT NULL,
    [AccountLN]          VARCHAR (25) NOT NULL DEFAULT 'No Data',
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimAccountType_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimAccountType_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWAccountTypeSKey] PRIMARY KEY CLUSTERED ([LWAccountTypeSKey] ASC)
);

