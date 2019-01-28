CREATE TABLE [dbo].[DimDistributorHQ4] (
    [LBDistributorHQ4SKey]      INT          IDENTITY (1, 1) NOT NULL,
    [DistributorHQ4ID]          char (18) NOT NULL,
    [DistributorHQ4LD]          VARCHAR (50) NOT NULL,
    [LBDistributorHQ4OwnerSKey] INT          NOT NULL,
    [LBSourceID]                INT          NOT NULL,
    [SourceCreateDate]          DATETIME     NULL,
    [SourceModifiedDate]        DATETIME     NULL,
    [LBCreateDate]              DATETIME     CONSTRAINT [DF_DimDistributorHQ4_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]            DATETIME     CONSTRAINT [DF_DimDistributorHQ4_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBDistributorHQ4SKey] PRIMARY KEY CLUSTERED ([LBDistributorHQ4SKey] ASC)
);

