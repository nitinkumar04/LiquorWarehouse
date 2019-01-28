CREATE TABLE [dbo].[DimRetailerHQ3] (
    [LWRetailerHQ3SKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQ3ID]          char (18)  NOT NULL,
    [RetailerHQ3LD]          VARCHAR (50)  NOT NULL,
    [LWSalesforceURL]        VARCHAR (100) NOT NULL,
    [LWRetailerHQ3OwnerSKey] INT           NOT NULL,
    [LWPremiseTypeSKey]      INT           NOT NULL,
    [LWRetailerHQ4SKey]      INT           NOT NULL,
    [LWExistsInSFFlag]       INT           NOT NULL,
    [LWSourceID]             INT           NOT NULL,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimRetailerHQ3_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimRetailerHQ3_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerHQ3SKey] PRIMARY KEY CLUSTERED ([LWRetailerHQ3SKey] ASC)
);

