CREATE TABLE [dbo].[DimTradeChannel] (
    [LWTradeChannelSKey] INT          IDENTITY (1, 1) NOT NULL,
    [TradeChannelLN]     NVARCHAR (100) NOT NULL DEFAULT '-1',
    [LWSourceID]           INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]     DATETIME     NULL,
    [SourceModifiedDate]   DATETIME     NULL,
    [LWCreateDate]         DATETIME     CONSTRAINT [DF_DimTradeChannel_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]       DATETIME     CONSTRAINT [DF_DimTradeChannel_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWTradeChannelSKey] PRIMARY KEY CLUSTERED ([LWTradeChannelSKey] ASC)
);