CREATE TABLE [dbo].[DimDistributorOwner] (
    [LWDistributorOwnerSKey]    INT          IDENTITY (1, 1) NOT NULL,
    [DistributorOwnerID]        char (18) NOT NULL,
    [DistributorOwnerFirstName] VARCHAR (25) NOT NULL,
    [DistributorOwnerLastName]  VARCHAR (25) NOT NULL,
    [DistributorOwnerName]      VARCHAR (50) NOT NULL,
    [LWSourceID]                INT          NOT NULL,
    [SourceCreateDate]          DATETIME     NULL,
    [SourceModifiedDate]        DATETIME     NULL,
    [LWCreateDate]              DATETIME     CONSTRAINT [DF_DimDistributorOwner_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]            DATETIME     CONSTRAINT [DF_DimDistributorOwner_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDistributorOwnerSKey] PRIMARY KEY CLUSTERED ([LWDistributorOwnerSKey] ASC)
);

