CREATE TABLE [dbo].[DimDistributorRep] (
    [LWDistributorRepSKey]  INT          IDENTITY (1, 1) NOT NULL,
    [DistributorRepID]      char (18) NOT NULL,
    [DistributorName]       VARCHAR (50) NOT NULL,
    [LWDistributorSKey]     INT          NOT NULL,
    [LWDistributorTeamSKey] INT          NOT NULL,
    [LWSourceID]            INT          NOT NULL,
    [SourceCreateDate]      DATETIME     NULL,
    [SourceModifiedDate]    DATETIME     NULL,
    [LWCreateDate]          DATETIME     CONSTRAINT [DF_DimDistributorRep_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]        DATETIME     CONSTRAINT [DF_DimDistributorRep_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDistributorRepSKey] PRIMARY KEY CLUSTERED ([LWDistributorRepSKey] ASC)
);

