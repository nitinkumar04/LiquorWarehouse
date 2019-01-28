CREATE TABLE [dbo].[DimDistributorRep] (
    [LBDistributorRepSKey]  INT          IDENTITY (1, 1) NOT NULL,
    [DistributorRepID]      char (18) NOT NULL,
    [DistributorName]       VARCHAR (50) NOT NULL,
    [LBDistributorSKey]     INT          NOT NULL,
    [LBDistributorTeamSKey] INT          NOT NULL,
    [LBSourceID]            INT          NOT NULL,
    [SourceCreateDate]      DATETIME     NULL,
    [SourceModifiedDate]    DATETIME     NULL,
    [LBCreateDate]          DATETIME     CONSTRAINT [DF_DimDistributorRep_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]        DATETIME     CONSTRAINT [DF_DimDistributorRep_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBDistributorRepSKey] PRIMARY KEY CLUSTERED ([LBDistributorRepSKey] ASC)
);

