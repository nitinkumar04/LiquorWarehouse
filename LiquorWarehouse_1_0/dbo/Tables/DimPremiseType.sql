CREATE TABLE [dbo].[DimPremiseType] (
    [LWPremiseTypeSKey]      INT           IDENTITY (1, 1) NOT NULL,
    [PremiseTypeID]          INT  NOT NULL DEFAULT -1,
    [PremiseTypeSN]          VARCHAR (5)   NOT NULL DEFAULT '-',
    [PremiseTypeLN]          VARCHAR (25)  NOT NULL DEFAULT 'No Data',
    [PremiseTypeDescription] VARCHAR (100) NOT NULL DEFAULT 'No Data',
    [LWActiveFlag]           INT           NOT NULL DEFAULT -1,
    [LWSourceID]             INT           NOT NULL DEFAULT -1,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimPremiseType_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimPremiseType_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWPremiseTypeSKey] PRIMARY KEY CLUSTERED ([LWPremiseTypeSKey] ASC)
);

