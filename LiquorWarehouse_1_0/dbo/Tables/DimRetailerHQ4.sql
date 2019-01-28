CREATE TABLE [dbo].[DimRetailerHQ4] (
    [LBRetailerHQ4SKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQ4ID]          char (18)  NOT NULL,
    [RetailerHQ4LD]          VARCHAR (50)  NOT NULL,
    [LBSalesforceURL]        VARCHAR (100) NOT NULL,
    [LBRetailerHQ4OwnerSKey] INT           NOT NULL,
    [LBPremiseTypeSKey]      INT           NOT NULL,
    [LBExistsInSFFlag]       INT           NOT NULL,
    [LBSourceID]             INT           NOT NULL,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LBCreateDate]           DATETIME      CONSTRAINT [DF_DimRetailerHQ4_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]         DATETIME      CONSTRAINT [DF_DimRetailerHQ4_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBRetailerHQ4SKey] PRIMARY KEY CLUSTERED ([LBRetailerHQ4SKey] ASC)
);

