CREATE TABLE [dbo].[DimMarketingGroup] (
    [LWMarketingGroupSKey] INT          IDENTITY (1, 1) NOT NULL,
    [MarketingGroupID]     char (18) NULL,
    [MarketingGroupLD]     VARCHAR (50) NULL,
    [LWSourceID]           INT          NOT NULL,
    [SourceCreateDate]     DATETIME     NULL,
    [SourceModifiedDate]   DATETIME     NULL,
    [LWCreateDate]         DATETIME     CONSTRAINT [DF_DimMarketingGroup_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]       DATETIME     CONSTRAINT [DF_DimMarketingGroup_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWMarketingGroupSKey] PRIMARY KEY CLUSTERED ([LWMarketingGroupSKey] ASC)
);

