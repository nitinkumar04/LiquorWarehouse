CREATE TABLE [dbo].[DimStatus] (
    [LWStatusSKey]       INT          IDENTITY (1, 1) NOT NULL,
    [StatusID]           VARCHAR (10) NOT NULL DEFAULT '-1',
    [StatusSN]           VARCHAR (10) NULL,
    [StatusLN]           VARCHAR (25) NOT NULL DEFAULT 'No Data',
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimStatusIndicator_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimStatusIndicator_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWStatusIndicatorSKey] PRIMARY KEY CLUSTERED ([LWStatusSKey] ASC)
);

