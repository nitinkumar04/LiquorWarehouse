CREATE TABLE [dbo].[DimDistributor] (
    [LBDistributorSKey]      INT           IDENTITY (1, 1) NOT NULL,
    [DistributorID]          char (18)  NOT NULL,
    [DistributorLD]          VARCHAR (50)  NOT NULL,
    [LBDistributorOwnerSKey] INT           NOT NULL,
    [LBDistributorHQSKey]    INT           NOT NULL,
    [LBSalesforceURL]        VARCHAR (100) NOT NULL,
    [LBSourceID]             INT           NOT NULL,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LBCreateDate]           DATETIME      CONSTRAINT [DF_DimDistributor_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]         DATETIME      CONSTRAINT [DF_DimDistributor_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBDistributorSKey] PRIMARY KEY CLUSTERED ([LBDistributorSKey] ASC)
);

