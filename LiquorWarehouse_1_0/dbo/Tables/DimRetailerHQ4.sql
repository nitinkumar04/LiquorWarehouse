CREATE TABLE [dbo].[DimRetailerHQ4] (
    [LWRetailerHQ4SKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQ4ID]          char (18)  NOT NULL,
    [RetailerHQ4LD]          VARCHAR (50)  NOT NULL,
    [LWSalesforceURL]        VARCHAR (100) NOT NULL,
    [LWRetailerHQ4OwnerSKey] INT           NOT NULL,
    [LWPremiseTypeSKey]      INT           NOT NULL,
    [LWExistsInSFFlag]       INT           NOT NULL,
    [LWSourceID]             INT           NOT NULL,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimRetailerHQ4_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimRetailerHQ4_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerHQ4SKey] PRIMARY KEY CLUSTERED ([LWRetailerHQ4SKey] ASC)
);

