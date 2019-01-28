CREATE TABLE [dbo].[DimRetailerHQ] (
    [LBRetailerHQSKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQID]          char (18)  NOT NULL,
    [RetailerHQLD]          VARCHAR (50)  NOT NULL,
    [LBRetailerHQOwnerSKey] INT           NOT NULL,
    [LBSalesforceURL]       VARCHAR (100) NOT NULL,
    [LBPremiseTypeSKey]     INT           NOT NULL,
    [LBRetailerHQ2SKey]     INT           NOT NULL,
    [LBExistsInSFFlag]      INT           NOT NULL,
    [LBSourceID]            INT           NOT NULL,
    [SourceCreateDate]      DATETIME      NULL,
    [SourceModifiedDate]    DATETIME      NULL,
    [LBCreateDate]          DATETIME      CONSTRAINT [DF_DimRetailerHQ_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]        DATETIME      CONSTRAINT [DF_DimRetailerHQ_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBRetailerHQSKey] PRIMARY KEY CLUSTERED ([LBRetailerHQSKey] ASC)
);

