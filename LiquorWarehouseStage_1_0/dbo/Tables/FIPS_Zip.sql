CREATE TABLE [dbo].[FIPS_Zip] (
    [ZCTA5]		    VARCHAR(5) 		NOT NULL,
    [STATE]		    VARCHAR(2) 	    NOT NULL,
    [COUNTY]	    VARCHAR(3)		NOT NULL,
	[GEOID]         VARCHAR(5)      NOT NULL,
    [CreatedDate]	DATETIME		CONSTRAINT [DF_FIPS_Zip_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [ModifiedDate]	DATETIME		CONSTRAINT [DF_FIPS_Zip_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FIPS_Zip] PRIMARY KEY CLUSTERED ([GEOID] ASC)
);

