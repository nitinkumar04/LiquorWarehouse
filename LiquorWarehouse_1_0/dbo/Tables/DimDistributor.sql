CREATE TABLE [dbo].[DimDistributor] (
    [LWDistributorSKey]      INT           IDENTITY (1, 1) NOT NULL,
    [DistributorID]          char (18)  NOT NULL DEFAULT '-1',
    [DistributorLN]          VARCHAR (50)  NOT NULL DEFAULT 'No Data',
    [LWDistributorOwnerSKey] INT           NOT NULL DEFAULT -1,
    [LWDistributorHQSKey]    INT           NOT NULL DEFAULT -1,
    [LWTerritorySkey]        INT           NOT NULL DEFAULT -1,
    [LWDistributorURL]        VARCHAR (100) NOT NULL DEFAULT 'No Data',
    [LWSourceID]             INT           NOT NULL DEFAULT -1,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimDistributor_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimDistributor_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDistributorSKey] PRIMARY KEY CLUSTERED ([LWDistributorSKey] ASC)
);

