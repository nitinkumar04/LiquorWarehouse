CREATE TABLE [dbo].[DimRetailerHQ] (
    [LWRetailerHQSKey]      INT           IDENTITY (1, 1) NOT NULL,
    [RetailerHQID]          char (18)  NOT NULL DEFAULT '-1',
    [RetailerHQLN]          VARCHAR (50)  NOT NULL DEFAULT 'No Data',
    [LWRetailerHQOwnerSKey] INT           NOT NULL DEFAULT -1,
    [LWRetailerHQURL]       VARCHAR (100) NOT NULL DEFAULT 'No Data',
    [LWPremiseTypeSKey]     INT           NOT NULL DEFAULT -1,
    [LWRetailerHQ2SKey]     INT           NOT NULL DEFAULT -1,
    [LWExistsInSFFlag]      INT           NOT NULL DEFAULT -1,
    [LWSourceID]            INT           NOT NULL DEFAULT -1,
    [SourceCreateDate]      DATETIME      NULL,
    [SourceModifiedDate]    DATETIME      NULL,
    [LWCreateDate]          DATETIME      CONSTRAINT [DF_DimRetailerHQ_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]        DATETIME      CONSTRAINT [DF_DimRetailerHQ_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerHQSKey] PRIMARY KEY CLUSTERED ([LWRetailerHQSKey] ASC)
);

