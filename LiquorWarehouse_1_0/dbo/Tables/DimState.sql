CREATE TABLE [dbo].[DimState] (
    [LBStateSKey]        INT          IDENTITY (1, 1) NOT NULL,
    [StateSD]            VARCHAR (4)  NULL,
    [StateLD]            VARCHAR (50) NULL,
    [LBCountrySKey]      INT          NOT NULL,
    [LBSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LBCreateDate]       DATETIME     CONSTRAINT [DF_DimState_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]     DATETIME     CONSTRAINT [DF_DimState_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimState] PRIMARY KEY CLUSTERED ([LBStateSKey] ASC)
);

