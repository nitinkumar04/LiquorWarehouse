CREATE TABLE [dbo].[DimDivisionLevel3] (
    [LWDivisionLevel3SKey]     INT          IDENTITY (1, 1) NOT NULL,
    [DivisionLevel3ID]         char (18) NOT NULL DEFAULT '-1',
    [DivisionLevel3SN]         VARCHAR (10) NOT NULL DEFAULT '-',
    [DivisionLevel3LN]         VARCHAR (50) NOT NULL DEFAULT 'No Data',
    LWCompanySKey INT          NOT NULL DEFAULT -1,
    LWManagerSKey        INT          NOT NULL DEFAULT -1,
    [DivisionLevel3Custom1]    VARCHAR (50) NULL,
    [DivisionLevel3Custom2]    VARCHAR (50) NULL,
    [DivisionLevel3Custom3]    VARCHAR (50) NULL,
    [DivisionLevel3Custom4]    VARCHAR (50) NULL,
    [DivisionLevel3Custom5]    VARCHAR (50) NULL,
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimDivisionLevel3_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimDivisionLevel3_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDivisionLevel3SKey] PRIMARY KEY CLUSTERED ([LWDivisionLevel3SKey] ASC)
);

