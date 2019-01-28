CREATE TABLE [dbo].[DimRegion] (
    [LBRegionSKey]       INT          IDENTITY (1, 1) NOT NULL,
    [RegionID]           char (18) NOT NULL,
    [RegionSD]           VARCHAR (10) NOT NULL,
    [RegionLD]           VARCHAR (50) NOT NULL,
    [RegionCustom1]      VARCHAR (50) NULL,
    [RegionCustom2]      VARCHAR (50) NULL,
    [LBDivisionSKey]     INT          NOT NULL,
    [LBSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LBCreateDate]       DATETIME     CONSTRAINT [DF_DimRegion_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]     DATETIME     CONSTRAINT [DF_DimRegion_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBRegionSKey] PRIMARY KEY CLUSTERED ([LBRegionSKey] ASC)
);

