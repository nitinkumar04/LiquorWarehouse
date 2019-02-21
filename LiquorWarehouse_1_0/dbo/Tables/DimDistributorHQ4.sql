CREATE TABLE [dbo].[DimDistributorHQ4] (
    [LWDistributorHQ4SKey]      INT          IDENTITY (1, 1) NOT NULL,
    [DistributorHQ4ID]          char (18) NOT NULL DEFAULT '-1',
    [DistributorHQ4LN]          VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWDistributorHQ4OwnerSKey] INT          NOT NULL DEFAULT -1,
    [LWSourceID]                INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]          DATETIME     NULL,
    [SourceModifiedDate]        DATETIME     NULL,
    [LWCreateDate]              DATETIME     CONSTRAINT [DF_DimDistributorHQ4_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]            DATETIME     CONSTRAINT [DF_DimDistributorHQ4_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDistributorHQ4SKey] PRIMARY KEY CLUSTERED ([LWDistributorHQ4SKey] ASC)
);

