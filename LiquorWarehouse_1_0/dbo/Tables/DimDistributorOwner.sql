CREATE TABLE [dbo].[DimDistributorOwner] (
    [LBDistributorOwnerSKey]    INT          IDENTITY (1, 1) NOT NULL,
    [DistributorOwnerID]        char (18) NOT NULL,
    [DistributorOwnerFirstName] VARCHAR (25) NOT NULL,
    [DistributorOwnerLastName]  VARCHAR (25) NOT NULL,
    [DistributorOwnerName]      VARCHAR (50) NOT NULL,
    [LBSourceID]                INT          NOT NULL,
    [SourceCreateDate]          DATETIME     NULL,
    [SourceModifiedDate]        DATETIME     NULL,
    [LBCreateDate]              DATETIME     CONSTRAINT [DF_DimDistributorOwner_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]            DATETIME     CONSTRAINT [DF_DimDistributorOwner_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBDistributorOwnerSKey] PRIMARY KEY CLUSTERED ([LBDistributorOwnerSKey] ASC)
);

