CREATE TABLE [dbo].[DimCountry] (
    [LBCountrySKey]      INT          IDENTITY (1, 1) NOT NULL,
    [CountrySN]          VARCHAR (3)  NOT NULL DEFAULT '?',
    [CountryLN]          VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LBSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LBCreateDate]       DATETIME     CONSTRAINT [DF_DimCountry_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]     DATETIME     CONSTRAINT [DF_DimCountry_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimCountry] PRIMARY KEY CLUSTERED ([LBCountrySKey] ASC)
);

