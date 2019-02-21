CREATE TABLE [dbo].[DimDistributorHQ3] (
    [LWDistributorHQ3SKey]      INT          IDENTITY (1, 1) NOT NULL,
    [DistributorHQ3ID]          char (18) NOT NULL DEFAULT '-1',
    [DistributorHQ3LN]          VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWDistributorHQ3OwnerSKey] INT          NOT NULL DEFAULT -1,
    [LWDistributorHQ4SKey]      INT          NOT NULL DEFAULT -1,
    [LWSourceID]                INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]          DATETIME     NULL,
    [SourceModifiedDate]        DATETIME     NULL,
    [LWCreateDate]              DATETIME     CONSTRAINT [DF_DimDistributorHQ3_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]            DATETIME     CONSTRAINT [DF_DimDistributorHQ3_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDistributorHQ3SKey] PRIMARY KEY CLUSTERED ([LWDistributorHQ3SKey] ASC)
);

