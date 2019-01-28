CREATE TABLE [dbo].[DimDistributorHQ4] (
    [LWDistributorHQ4SKey]      INT          IDENTITY (1, 1) NOT NULL,
    [DistributorHQ4ID]          char (18) NOT NULL,
    [DistributorHQ4LD]          VARCHAR (50) NOT NULL,
    [LWDistributorHQ4OwnerSKey] INT          NOT NULL,
    [LWSourceID]                INT          NOT NULL,
    [SourceCreateDate]          DATETIME     NULL,
    [SourceModifiedDate]        DATETIME     NULL,
    [LWCreateDate]              DATETIME     CONSTRAINT [DF_DimDistributorHQ4_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]            DATETIME     CONSTRAINT [DF_DimDistributorHQ4_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDistributorHQ4SKey] PRIMARY KEY CLUSTERED ([LWDistributorHQ4SKey] ASC)
);

