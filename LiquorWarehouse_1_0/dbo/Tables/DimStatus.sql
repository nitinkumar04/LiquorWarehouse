CREATE TABLE [dbo].[DimStatus] (
    [LBStatusSKey]       INT          IDENTITY (1, 1) NOT NULL,
    [StatusID]           VARCHAR (10) NOT NULL,
    [StatusSD]           VARCHAR (10) NOT NULL,
    [StatusLD]           VARCHAR (25) NOT NULL,
    [LBSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LBCreateDate]       DATETIME     CONSTRAINT [DF_DimStatusIndicator_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]     DATETIME     CONSTRAINT [DF_DimStatusIndicator_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBStatusIndicatorSKey] PRIMARY KEY CLUSTERED ([LBStatusSKey] ASC)
);

