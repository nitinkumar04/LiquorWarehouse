CREATE TABLE [dbo].[DimRetailerHQ2] (
    [LBRetailerHQ2SKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQ2ID]          char (18)  NOT NULL,
    [RetailerHQ2LD]          VARCHAR (50)  NOT NULL,
    [LBSalesforceURL]        VARCHAR (100) NOT NULL,
    [LBRetailerHQ2OwnerSKey] INT           NOT NULL,
    [LBPremiseTypeSKey]      INT           NOT NULL,
    [LBRetailerHQ3SKey]      INT           NOT NULL,
    [LBExistsInSFFlag]       INT           NOT NULL,
    [LBSourceID]             INT           NOT NULL,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LBCreateDate]           DATETIME      CONSTRAINT [DF_DimRetailerHQ2_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]         DATETIME      CONSTRAINT [DF_DimRetailerHQ2_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBRetailerHQ2SKey] PRIMARY KEY CLUSTERED ([LBRetailerHQ2SKey] ASC)
);

