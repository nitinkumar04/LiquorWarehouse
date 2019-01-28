CREATE TABLE [dbo].[DimStatus] (
    [LWStatusSKey]       INT          IDENTITY (1, 1) NOT NULL,
    [StatusID]           VARCHAR (10) NOT NULL,
    [StatusSD]           VARCHAR (10) NOT NULL,
    [StatusLD]           VARCHAR (25) NOT NULL,
    [LWSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimStatusIndicator_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimStatusIndicator_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWStatusIndicatorSKey] PRIMARY KEY CLUSTERED ([LWStatusSKey] ASC)
);

