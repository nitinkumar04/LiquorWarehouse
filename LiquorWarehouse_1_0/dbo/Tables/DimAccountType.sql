CREATE TABLE [dbo].[DimAccountType] (
    [LBAccountTypeSKey]  INT          IDENTITY (1, 1) NOT NULL,
    [AccountLN]          VARCHAR (25) NOT NULL DEFAULT 'No Data',
    [LBSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LBCreateDate]       DATETIME     CONSTRAINT [DF_DimAccountType_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]     DATETIME     CONSTRAINT [DF_DimAccountType_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBAccountTypeSKey] PRIMARY KEY CLUSTERED ([LBAccountTypeSKey] ASC)
);

