CREATE TABLE [dbo].[DimTerritory] (
    [LWTerritorySKey]    INT			IDENTITY (100000, 1) NOT NULL,
    [TerritoryID]        char (18)		NOT NULL DEFAULT '-1',
    [TerritorySN]        VARCHAR (10)	NOT NULL DEFAULT '-',
    [TerritoryLN]        VARCHAR (50)	NOT NULL DEFAULT 'No Data',
    [LWTerritoryURL]     NVARCHAR (100)	NULL,
    [TerritoryCustom1]   VARCHAR (50)	NULL,
    [TerritoryCustom2]   VARCHAR (50)	NULL,
    [TerritoryCustom3]   VARCHAR (50)	NULL,
    [TerritoryCustom4]   VARCHAR (50)	NULL,
    [TerritoryCustom5]   VARCHAR (50)	NULL,
    [LWRegionSKey]       INT			NOT NULL DEFAULT -1,
    [LWSourceID]         INT			NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME		NULL,
    [SourceModifiedDate] DATETIME		NULL,
    [LWCreateDate]       DATETIME		CONSTRAINT [DF_DimTerritory_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME		CONSTRAINT [DF_DimTerritory_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWTerritorySKey] PRIMARY KEY CLUSTERED ([LWTerritorySKey] ASC)
);

