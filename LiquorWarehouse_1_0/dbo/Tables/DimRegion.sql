CREATE TABLE [dbo].[DimRegion] (
    [LWRegionSKey]       INT			IDENTITY (10000, 1) NOT NULL,
    [RegionID]           char (18)		NOT NULL DEFAULT '-1',
    [RegionSN]           VARCHAR (10)	NOT NULL DEFAULT '-',
    [RegionLN]           VARCHAR (50)	NOT NULL DEFAULT 'No Data',
    [RegionCustom1]      VARCHAR (50)	NULL,
    [RegionCustom2]      VARCHAR (50)	NULL,
    [LWDivisionSKey]     INT			NOT NULL DEFAULT -1,
    [LWSourceID]         INT			NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME		NULL,
    [SourceModifiedDate] DATETIME		NULL,
    [LWCreateDate]       DATETIME		CONSTRAINT [DF_DimRegion_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME		CONSTRAINT [DF_DimRegion_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRegionSKey] PRIMARY KEY CLUSTERED ([LWRegionSKey] ASC)
);

