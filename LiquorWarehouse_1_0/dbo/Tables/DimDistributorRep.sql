CREATE TABLE [dbo].[DimDistributorRep] (
    [LWDistributorRepSKey]  INT          IDENTITY (1, 1) NOT NULL,
    [DistributorRepID]      char (18) NOT NULL DEFAULT '-1',
    [DistributorName]       VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWDistributorSKey]     INT          NOT NULL DEFAULT -1,
    [LWDistributorTeamSKey] INT          NOT NULL DEFAULT -1,
    [LWSourceID]            INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]      DATETIME     NULL,
    [SourceModifiedDate]    DATETIME     NULL,
    [LWCreateDate]          DATETIME     CONSTRAINT [DF_DimDistributorRep_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]        DATETIME     CONSTRAINT [DF_DimDistributorRep_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDistributorRepSKey] PRIMARY KEY CLUSTERED ([LWDistributorRepSKey] ASC)
);

