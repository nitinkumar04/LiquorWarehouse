CREATE TABLE [dbo].[DimDivisionLevel1] (
    [LWDivisionLevel1SKey]     INT          IDENTITY (1, 1) NOT NULL,
    [DivisionLevel1ID]         char (18) NOT NULL DEFAULT '-1',
    [DivisionLevel1SN]         VARCHAR (10) NOT NULL DEFAULT '-',
    [DivisionLevel1LN]         VARCHAR (50) NOT NULL DEFAULT 'No Data',
    LWDivisionLevel2SKey INT          NOT NULL DEFAULT -1,
    LWManagerSKey        INT          NOT NULL DEFAULT -1,
    [DivisionLevel1Custom1]    VARCHAR (50) NULL,
    [DivisionLevel1Custom2]    VARCHAR (50) NULL,
    [DivisionLevel1Custom3]    VARCHAR (50) NULL,
    [DivisionLevel1Custom4]    VARCHAR (50) NULL,
    [DivisionLevel1Custom5]    VARCHAR (50) NULL,
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimDivisionLevel1_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimDivisionLevel1_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDivisionLevel1SKey] PRIMARY KEY CLUSTERED ([LWDivisionLevel1SKey] ASC)
);

