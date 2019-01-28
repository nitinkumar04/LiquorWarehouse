CREATE TABLE [dbo].[DimDistributorHQ2] (
    [LWDistributorHQ2SKey]      INT          IDENTITY (1, 1) NOT NULL,
    [DistributorHQ2ID]          char (18) NOT NULL,
    [DistributorHQ2LD]          VARCHAR (50) NOT NULL,
    [LWDistributorHQ2OwnerSKey] INT          NOT NULL,
    [LWDistributorHQ3SKey]      INT          NOT NULL,
    [LWSourceID]                INT          NOT NULL,
    [SourceCreateDate]          DATETIME     NULL,
    [SourceModifiedDate]        DATETIME     NULL,
    [LWCreateDate]              DATETIME     CONSTRAINT [DF_DimDistributorHQ2_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]            DATETIME     CONSTRAINT [DF_DimDistributorHQ2_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDistributorHQ2SKey] PRIMARY KEY CLUSTERED ([LWDistributorHQ2SKey] ASC)
);

