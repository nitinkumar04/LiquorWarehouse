CREATE TABLE [dbo].[DimRetailerOwner] (
    [LBRetailerOwnerSKey]    INT          IDENTITY (1, 1) NOT NULL,
    [RetailerOwnerID]        char (18) NOT NULL,
    [RetailerOwnerFirstName] VARCHAR (25) NOT NULL,
    [RetailerOwnerLastName]  VARCHAR (50) NOT NULL,
    [LBSourceID]             INT          NOT NULL,
    [SourceCreateDate]       DATETIME     NULL,
    [SourceModifiedDate]     DATETIME     NULL,
    [LBCreateDate]           DATETIME     CONSTRAINT [DF_DimRetailerOwner_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]         DATETIME     CONSTRAINT [DF_DimRetailerOwner_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBRetailerOwnerSKey] PRIMARY KEY CLUSTERED ([LBRetailerOwnerSKey] ASC)
);

