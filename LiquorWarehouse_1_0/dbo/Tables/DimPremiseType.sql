CREATE TABLE [dbo].[DimPremiseType] (
    [LWPremiseTypeSKey]      INT           IDENTITY (1, 1) NOT NULL,
    [PremiseTypeID]          char (18)  NOT NULL,
    [PremiseTypeSD]          VARCHAR (3)   NOT NULL,
    [PremiseTypeLD]          VARCHAR (25)  NOT NULL,
    [PremiseTypeDescription] VARCHAR (100) NOT NULL,
    [LWSourceID]             INT           NOT NULL,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimPremiseType_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimPremiseType_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWPremiseTypeSKey] PRIMARY KEY CLUSTERED ([LWPremiseTypeSKey] ASC)
);

