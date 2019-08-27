CREATE TABLE [dbo].[FIPS_County] (
    [State]		    VARCHAR (2)		NOT NULL,
    [State_ANSI]	VARCHAR (2)	    NOT NULL,
    [County_ANSI]	VARCHAR(3)		NOT NULL,
	[County_Name]   VARCHAR(50)     NOT NULL,
	[ANSI_CI]       VARCHAR(2)      NOT NULL,
    [CreatedDate]	DATETIME		CONSTRAINT [DF_FIPS_County_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [ModifiedDate]	DATETIME		CONSTRAINT [DF_FIPS_County_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FIPS_County] PRIMARY KEY ([State_ANSI], [County_ANSI])
);

