CREATE TABLE [dbo].[DimRetailerStatus] (
    [LWRetailerStatusSKey]       INT          IDENTITY (1, 1) NOT NULL,
    [RetailerStatusSN]           VARCHAR (10) NULL,
    [RetailerStatusLN]           VARCHAR (25) NOT NULL DEFAULT 'No Data',
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimRetailerStatusIndicator_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimRetailerStatusIndicator_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerStatusIndicatorSKey] PRIMARY KEY CLUSTERED ([LWRetailerStatusSKey] ASC)
);

