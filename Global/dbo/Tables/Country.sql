CREATE TABLE [dbo].[Country] (
    [CountrySN]		VARCHAR (4)		NOT NULL DEFAULT '?',
    [CountryLN]		VARCHAR (50)	NOT NULL DEFAULT 'No Data',
    [CreatedDate]	DATETIME		CONSTRAINT [DF_Country_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [ModifiedDate]	DATETIME		CONSTRAINT [DF_Country_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([CountrySN] ASC)
);

