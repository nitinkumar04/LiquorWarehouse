CREATE TABLE [dbo].[DimCounty] (
    [LWCountySKey]       INT          IDENTITY (1, 1) NOT NULL,
    [CountyLN]           VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWStateSKey]        INT          NOT NULL DEFAULT -1,
    [CountyFIPSCode]     VARCHAR (3)  NOT NULL DEFAULT '?',
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimCounty_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimCounty_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimCounty] PRIMARY KEY CLUSTERED ([LWCountySKey] ASC)
);

