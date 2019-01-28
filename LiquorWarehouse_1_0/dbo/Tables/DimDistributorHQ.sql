CREATE TABLE [dbo].[DimDistributorHQ] (
    [LBDistributorHQSKey]      INT          IDENTITY (1, 1) NOT NULL,
    [DistributorHQID]          char (18) NOT NULL,
    [DistributorHQLD]          VARCHAR (50) NOT NULL,
    [LBDistributorHQOwnerSKey] INT          NOT NULL,
    [LBDistributorHQ2SKey]     INT          NOT NULL,
    [LBSourceID]               INT          NOT NULL,
    [SourceCreateDate]         DATETIME     NULL,
    [SourceModifiedDate]       DATETIME     NULL,
    [LBCreateDate]             DATETIME     CONSTRAINT [DF_DimDistributorHQ_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]           DATETIME     CONSTRAINT [DF_DimDistributorHQ_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBDistributorHQSKey] PRIMARY KEY CLUSTERED ([LBDistributorHQSKey] ASC)
);

