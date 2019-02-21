CREATE TABLE [dbo].[DimRetailerHQ3] (
    [LWRetailerHQ3SKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQ3ID]          char (18)  NOT NULL DEFAULT '-1',
    [RetailerHQ3LN]          VARCHAR (50)  NOT NULL DEFAULT 'No Data',
    [LWRetailerHQ3URL]        VARCHAR (100) NOT NULL DEFAULT 'No Data',
    [LWRetailerHQ3OwnerSKey] INT           NOT NULL DEFAULT -1,
    [LWPremiseTypeSKey]      INT           NOT NULL DEFAULT -1,
    [LWRetailerHQ4SKey]      INT           NOT NULL DEFAULT -1,
    [LWExistsInSFFlag]       INT           NOT NULL DEFAULT -1,
    [LWSourceID]             INT           NOT NULL DEFAULT -1,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimRetailerHQ3_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimRetailerHQ3_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerHQ3SKey] PRIMARY KEY CLUSTERED ([LWRetailerHQ3SKey] ASC)
);

