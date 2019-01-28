CREATE TABLE [dbo].[DimState] (
    [LWStateSKey]        INT          IDENTITY (1, 1) NOT NULL,
    [StateSD]            VARCHAR (4)  NULL,
    [StateLD]            VARCHAR (50) NULL,
    [LWCountrySKey]      INT          NOT NULL,
    [LWSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimState_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimState_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimState] PRIMARY KEY CLUSTERED ([LWStateSKey] ASC)
);

