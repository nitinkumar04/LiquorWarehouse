CREATE TABLE [dbo].[DimRegion] (
    [LWRegionSKey]       INT          IDENTITY (1, 1) NOT NULL,
    [RegionID]           char (18) NOT NULL,
    [RegionSD]           VARCHAR (10) NOT NULL,
    [RegionLD]           VARCHAR (50) NOT NULL,
    [RegionCustom1]      VARCHAR (50) NULL,
    [RegionCustom2]      VARCHAR (50) NULL,
    [LWDivisionSKey]     INT          NOT NULL,
    [LWSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimRegion_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimRegion_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRegionSKey] PRIMARY KEY CLUSTERED ([LWRegionSKey] ASC)
);

