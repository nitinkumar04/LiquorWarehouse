CREATE TABLE [dbo].[DimRetailerHQ2] (
    [LWRetailerHQ2SKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQ2ID]          char (18)  NOT NULL,
    [RetailerHQ2LD]          VARCHAR (50)  NOT NULL,
    [LWSalesforceURL]        VARCHAR (100) NOT NULL,
    [LWRetailerHQ2OwnerSKey] INT           NOT NULL,
    [LWPremiseTypeSKey]      INT           NOT NULL,
    [LWRetailerHQ3SKey]      INT           NOT NULL,
    [LWExistsInSFFlag]       INT           NOT NULL,
    [LWSourceID]             INT           NOT NULL,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimRetailerHQ2_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimRetailerHQ2_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerHQ2SKey] PRIMARY KEY CLUSTERED ([LWRetailerHQ2SKey] ASC)
);

