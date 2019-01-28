CREATE TABLE [dbo].[DimTerritory] (
    [LBTerritorySKey]    INT          IDENTITY (1, 1) NOT NULL,
    [TerritoryID]        char (18) NOT NULL,
    [TerritorySD]        VARCHAR (10) NOT NULL,
    [TerritoryLD]        VARCHAR (50) NOT NULL,
    [TerritoryCustom1]   VARCHAR (50) NULL,
    [TerritoryCustom2]   VARCHAR (50) NULL,
    [TerritoryCustom3]   VARCHAR (50) NULL,
    [TerritoryCustom4]   VARCHAR (50) NULL,
    [TerritoryCustom5]   VARCHAR (50) NULL,
    [LBRegionSKey]       INT          NOT NULL,
    [LBSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LBCreateDate]       DATETIME     CONSTRAINT [DF_DimTerritory_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]     DATETIME     CONSTRAINT [DF_DimTerritory_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBTerritorySKey] PRIMARY KEY CLUSTERED ([LBTerritorySKey] ASC)
);

