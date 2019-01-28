CREATE TABLE [dbo].[DimCounty] (
    [LBCountySKey]       INT          IDENTITY (1, 1) NOT NULL,
    [CountyLN]           VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LBStateSKey]        INT          NOT NULL DEFAULT -1,
    [CountyFIPSCode]     VARCHAR (3)  NOT NULL DEFAULT '?',
    [LBSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LBCreateDate]       DATETIME     CONSTRAINT [DF_DimCounty_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]     DATETIME     CONSTRAINT [DF_DimCounty_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimCounty] PRIMARY KEY CLUSTERED ([LBCountySKey] ASC)
);

