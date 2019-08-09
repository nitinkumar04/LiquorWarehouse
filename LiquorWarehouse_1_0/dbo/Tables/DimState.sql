CREATE TABLE [dbo].[DimState] (
    [LWStateSKey]        INT          IDENTITY (1, 1) NOT NULL,
    [StateSN]            VARCHAR (4)  NOT NULL DEFAULT '-',
    [StateLN]            VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWCountrySKey]      INT          NOT NULL DEFAULT -1,
	[LWActiveFlag]		 INT          NOT NULL DEFAULT -1,
	[LWExistsInSFFlag]	 INT          NOT NULL DEFAULT -1,
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimState_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimState_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimState] PRIMARY KEY CLUSTERED ([LWStateSKey] ASC)
);

