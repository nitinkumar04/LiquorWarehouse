CREATE TABLE [dbo].[DimDistributorHQ2] (
    [LBDistributorHQ2SKey]      INT          IDENTITY (1, 1) NOT NULL,
    [DistributorHQ2ID]          char (18) NOT NULL,
    [DistributorHQ2LD]          VARCHAR (50) NOT NULL,
    [LBDistributorHQ2OwnerSKey] INT          NOT NULL,
    [LBDistributorHQ3SKey]      INT          NOT NULL,
    [LBSourceID]                INT          NOT NULL,
    [SourceCreateDate]          DATETIME     NULL,
    [SourceModifiedDate]        DATETIME     NULL,
    [LBCreateDate]              DATETIME     CONSTRAINT [DF_DimDistributorHQ2_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]            DATETIME     CONSTRAINT [DF_DimDistributorHQ2_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBDistributorHQ2SKey] PRIMARY KEY CLUSTERED ([LBDistributorHQ2SKey] ASC)
);

