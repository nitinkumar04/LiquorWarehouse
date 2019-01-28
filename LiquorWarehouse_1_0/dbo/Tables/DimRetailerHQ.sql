CREATE TABLE [dbo].[DimRetailerHQ] (
    [LWRetailerHQSKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQID]          char (18)  NOT NULL,
    [RetailerHQLD]          VARCHAR (50)  NOT NULL,
    [LWRetailerHQOwnerSKey] INT           NOT NULL,
    [LWSalesforceURL]       VARCHAR (100) NOT NULL,
    [LWPremiseTypeSKey]     INT           NOT NULL,
    [LWRetailerHQ2SKey]     INT           NOT NULL,
    [LWExistsInSFFlag]      INT           NOT NULL,
    [LWSourceID]            INT           NOT NULL,
    [SourceCreateDate]      DATETIME      NULL,
    [SourceModifiedDate]    DATETIME      NULL,
    [LWCreateDate]          DATETIME      CONSTRAINT [DF_DimRetailerHQ_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]        DATETIME      CONSTRAINT [DF_DimRetailerHQ_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerHQSKey] PRIMARY KEY CLUSTERED ([LWRetailerHQSKey] ASC)
);

