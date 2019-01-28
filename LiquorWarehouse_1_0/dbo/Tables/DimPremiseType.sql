CREATE TABLE [dbo].[DimPremiseType] (
    [LBPremiseTypeSKey]      INT           IDENTITY (1, 1) NOT NULL,
    [PremiseTypeID]          char (18)  NOT NULL,
    [PremiseTypeSD]          VARCHAR (3)   NOT NULL,
    [PremiseTypeLD]          VARCHAR (25)  NOT NULL,
    [PremiseTypeDescription] VARCHAR (100) NOT NULL,
    [LBSourceID]             INT           NOT NULL,
    [SourceCreateDate]       DATETIME      NULL,
    [SourceModifiedDate]     DATETIME      NULL,
    [LBCreateDate]           DATETIME      CONSTRAINT [DF_DimPremiseType_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]         DATETIME      CONSTRAINT [DF_DimPremiseType_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBPremiseTypeSKey] PRIMARY KEY CLUSTERED ([LBPremiseTypeSKey] ASC)
);

