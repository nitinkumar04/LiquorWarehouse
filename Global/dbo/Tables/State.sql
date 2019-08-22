CREATE TABLE [dbo].[State] (
    [StateSN]		VARCHAR (4)		NOT NULL DEFAULT '?',
    [StateLN]		VARCHAR (50)	NOT NULL DEFAULT 'No Data',
    [StateCountry]	VARCHAR(3)		NULL ,
    [CreatedDate]	DATETIME		CONSTRAINT [DF_State_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [ModifiedDate]	DATETIME		CONSTRAINT [DF_State_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED ([StateLN] ASC)
);

