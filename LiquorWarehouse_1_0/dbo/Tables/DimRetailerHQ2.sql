CREATE TABLE [dbo].[DimRetailerHQ2] (
    [LWRetailerHQ2SKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQ2ID]          char (18)  NOT NULL DEFAULT '-1',
    [RetailerHQ2LN]          VARCHAR (50)  NOT NULL DEFAULT 'No Data',
    [LWRetailerHQ2URL]        VARCHAR (100) NOT NULL DEFAULT 'No Data',
    [LWRetailerHQ2OwnerSKey] INT           NOT NULL DEFAULT -1,
    [LWPremiseTypeSKey]      INT           NOT NULL DEFAULT -1,
    [LWRetailerHQ3SKey]      INT           NOT NULL DEFAULT -1,
    [LWExistsInSFFlag]       INT           NOT NULL DEFAULT -1,
    [LWSourceID]             INT           NOT NULL DEFAULT -1,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimRetailerHQ2_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimRetailerHQ2_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerHQ2SKey] PRIMARY KEY CLUSTERED ([LWRetailerHQ2SKey] ASC)
);

