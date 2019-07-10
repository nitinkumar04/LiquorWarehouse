CREATE TABLE [dbo].[DimMarketingGroup] (
    [LWMarketingGroupSKey] INT          IDENTITY (1, 1) NOT NULL,
    [MarketingGroupID]     CHAR (18) NOT NULL DEFAULT '-1',
    [MarketingGroupLN]     NVARCHAR (100) NOT NULL DEFAULT 'No Data',
	[LWExistsInSFFlag] [int] NOT NULL DEFAULT -1,
    [LWSourceID]           INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]     DATETIME     NULL,
    [SourceModifiedDate]   DATETIME     NULL,
    [LWCreateDate]         DATETIME     CONSTRAINT [DF_DimMarketingGroup_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]       DATETIME     CONSTRAINT [DF_DimMarketingGroup_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWMarketingGroupSKey] PRIMARY KEY CLUSTERED ([LWMarketingGroupSKey] ASC)
);

