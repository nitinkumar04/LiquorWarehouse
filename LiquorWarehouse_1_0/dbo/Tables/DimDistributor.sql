CREATE TABLE [dbo].[DimDistributor] (
    [LWDistributorSKey]      INT           IDENTITY (1, 1) NOT NULL,
    [DistributorID]          char (18)  NOT NULL,
    [DistributorLD]          VARCHAR (50)  NOT NULL,
    [LWDistributorOwnerSKey] INT           NOT NULL,
    [LWDistributorHQSKey]    INT           NOT NULL,
    [LWSalesforceURL]        VARCHAR (100) NOT NULL,
    [LWSourceID]             INT           NOT NULL,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimDistributor_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimDistributor_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDistributorSKey] PRIMARY KEY CLUSTERED ([LWDistributorSKey] ASC)
);

