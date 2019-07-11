CREATE TABLE [dbo].[DimCompetitor] (
    [LWCompetitorSKey]   INT          IDENTITY (1, 1) NOT NULL,
    [CompetitorID]       char (18) NOT NULL DEFAULT '-1',
    [CompetitorLN]       VARCHAR (100) NOT NULL DEFAULT 'No Data',
	[ActiveStatus]       VARCHAR(25)   NULL ,
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
	[LWExistsInSFFlag]   INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimCompetitor_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimCompetitor_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWCompetitorSKey] PRIMARY KEY CLUSTERED ([LWCompetitorSKey] ASC)
);

