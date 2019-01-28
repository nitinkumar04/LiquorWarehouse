CREATE TABLE [dbo].[DimDistributorHQ3] (
    [LBDistributorHQ3SKey]      INT          IDENTITY (1, 1) NOT NULL,
    [DistributorHQ3ID]          char (18) NOT NULL,
    [DistributorHQ3LD]          VARCHAR (50) NOT NULL,
    [LBDistributorHQ3OwnerSKey] INT          NOT NULL,
    [LBDistributorHQ4SKey]      INT          NOT NULL,
    [LBSourceID]                INT          NOT NULL,
    [SourceCreateDate]          DATETIME     NULL,
    [SourceModifiedDate]        DATETIME     NULL,
    [LBCreateDate]              DATETIME     CONSTRAINT [DF_DimDistributorHQ3_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]            DATETIME     CONSTRAINT [DF_DimDistributorHQ3_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBDistributorHQ3SKey] PRIMARY KEY CLUSTERED ([LBDistributorHQ3SKey] ASC)
);

