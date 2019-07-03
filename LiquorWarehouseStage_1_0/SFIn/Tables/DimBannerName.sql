CREATE TABLE [dbo].[DimBannerName] (
    [LWBannerNameSKey] INT          IDENTITY (1, 1) NOT NULL,
    [BannerNameID]     char (18) NOT NULL DEFAULT '-1',
    [BannerNameLN]     VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWSourceID]           INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]     DATETIME     NULL,
    [SourceModifiedDate]   DATETIME     NULL,
    [LWCreateDate]         DATETIME     CONSTRAINT [DF_DimBannerName_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]       DATETIME     CONSTRAINT [DF_DimBannerName_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWBannerNameSKey] PRIMARY KEY CLUSTERED ([LWBannerNameSKey] ASC)
);