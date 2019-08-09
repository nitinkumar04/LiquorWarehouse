CREATE TABLE [dbo].[DimCountry] (
    [LWCountrySKey]      INT          IDENTITY (1, 1) NOT NULL,
    [CountrySN]          VARCHAR (3)  NOT NULL DEFAULT '-',
    [CountryLN]          VARCHAR (50) NOT NULL DEFAULT 'No Data',
	[LWActiveFlag]		 INT          NOT NULL DEFAULT -1,
	[LWExistsInSFFlag]	 INT          NOT NULL DEFAULT -1,
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimCountry_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimCountry_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimCountry] PRIMARY KEY CLUSTERED ([LWCountrySKey] ASC)
);

