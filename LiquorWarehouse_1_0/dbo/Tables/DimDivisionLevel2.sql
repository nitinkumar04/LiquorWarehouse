CREATE TABLE [dbo].[DimDivisionLevel2] (
    [LWDivisionLevel2SKey]     INT          IDENTITY (1, 1) NOT NULL,
    [DivisionLevel2ID]         char (18) NOT NULL DEFAULT '-1',
    [DivisionLevel2SN]         VARCHAR (10) NOT NULL DEFAULT '-',
    [DivisionLevel2LN]         VARCHAR (50) NOT NULL DEFAULT 'No Data',
    LWDivisionLevel3SKey INT          NOT NULL DEFAULT -1,
    LWManagerSKey        INT          NOT NULL DEFAULT -1,
    [DivisionLevel2Custom1]    VARCHAR (50) NULL,
    [DivisionLevel2Custom2]    VARCHAR (50) NULL,
    [DivisionLevel2Custom3]    VARCHAR (50) NULL,
    [DivisionLevel2Custom4]    VARCHAR (50) NULL,
    [DivisionLevel2Custom5]    VARCHAR (50) NULL,
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimDivisionLevel2_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimDivisionLevel2_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDivisionLevel2SKey] PRIMARY KEY CLUSTERED ([LWDivisionLevel2SKey] ASC)
);

