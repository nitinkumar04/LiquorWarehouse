CREATE TABLE [dbo].[DimClassOfTrade]
(
    [LWClassOfTradeSKey] INT          IDENTITY (1, 1) NOT NULL,
    [ClassOfTradeLN]     VARCHAR (25) NOT NULL DEFAULT 'No Data',
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimClassOfTrade_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimClassOfTrade_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWAClassOfTradeSKey] PRIMARY KEY CLUSTERED ([LWClassOfTradeSKey])
       )
