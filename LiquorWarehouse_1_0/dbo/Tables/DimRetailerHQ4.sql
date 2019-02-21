CREATE TABLE [dbo].[DimRetailerHQ4] (
    [LWRetailerHQ4SKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQ4ID]          char (18)  NOT NULL DEFAULT '-1',
    [RetailerHQ4LN]          VARCHAR (50)  NOT NULL DEFAULT 'No Data',
    [LWRetailerHQ4URL]        VARCHAR (100) NOT NULL DEFAULT 'No Data',
    [LWRetailerHQ4OwnerSKey] INT           NOT NULL DEFAULT -1,
    [LWPremiseTypeSKey]      INT           NOT NULL DEFAULT -1,
    [LWExistsInSFFlag]       INT           NOT NULL DEFAULT -1,
    [LWSourceID]             INT           NOT NULL DEFAULT -1,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimRetailerHQ4_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimRetailerHQ4_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerHQ4SKey] PRIMARY KEY CLUSTERED ([LWRetailerHQ4SKey] ASC)
);

