CREATE TABLE [dbo].[DimMarketingGroup] (
    [LBMarketingGroupSKey] INT          IDENTITY (1, 1) NOT NULL,
    [MarketingGroupID]     char (18) NULL,
    [MarketingGroupLD]     VARCHAR (50) NULL,
    [LBSourceID]           INT          NOT NULL,
    [SourceCreateDate]     DATETIME     NULL,
    [SourceModifiedDate]   DATETIME     NULL,
    [LBCreateDate]         DATETIME     CONSTRAINT [DF_DimMarketingGroup_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]       DATETIME     CONSTRAINT [DF_DimMarketingGroup_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBMarketingGroupSKey] PRIMARY KEY CLUSTERED ([LBMarketingGroupSKey] ASC)
);

