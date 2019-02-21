CREATE TABLE [dbo].[DimDistributorHQ] (
    [LWDistributorHQSKey]      INT          IDENTITY (1, 1) NOT NULL,
    [DistributorHQID]          char (18) NOT NULL DEFAULT '-1',
    [DistributorHQLN]          VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWDistributorHQOwnerSKey] INT          NOT NULL DEFAULT -1,
    [LWDistributorHQ2SKey]     INT          NOT NULL DEFAULT -1,
    [LWSourceID]               INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]         DATETIME     NULL,
    [SourceModifiedDate]       DATETIME     NULL,
    [LWCreateDate]             DATETIME     CONSTRAINT [DF_DimDistributorHQ_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]           DATETIME     CONSTRAINT [DF_DimDistributorHQ_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDistributorHQSKey] PRIMARY KEY CLUSTERED ([LWDistributorHQSKey] ASC)
);

