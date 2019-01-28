CREATE TABLE [dbo].[DimRetailerHQ3] (
    [LBRetailerHQ3SKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQ3ID]          char (18)  NOT NULL,
    [RetailerHQ3LD]          VARCHAR (50)  NOT NULL,
    [LBSalesforceURL]        VARCHAR (100) NOT NULL,
    [LBRetailerHQ3OwnerSKey] INT           NOT NULL,
    [LBPremiseTypeSKey]      INT           NOT NULL,
    [LBRetailerHQ4SKey]      INT           NOT NULL,
    [LBExistsInSFFlag]       INT           NOT NULL,
    [LBSourceID]             INT           NOT NULL,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LBCreateDate]           DATETIME      CONSTRAINT [DF_DimRetailerHQ3_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]         DATETIME      CONSTRAINT [DF_DimRetailerHQ3_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBRetailerHQ3SKey] PRIMARY KEY CLUSTERED ([LBRetailerHQ3SKey] ASC)
);

