CREATE TABLE [dbo].[DimDivision] (
    [LWDivisionSKey]     INT          IDENTITY (1, 1) NOT NULL,
    [DivisionID]         char (18) NOT NULL DEFAULT '-1',
    [DivisionSN]         VARCHAR (10) NOT NULL DEFAULT '-',
    [DivisionLN]         VARCHAR (50) NOT NULL DEFAULT 'No Data',
    LWDivisionLevel1SKey INT          NOT NULL DEFAULT -1,
    LWManagerSKey        INT          NOT NULL DEFAULT -1,
    [DivisionCustom1]    VARCHAR (50) NULL,
    [DivisionCustom2]    VARCHAR (50) NULL,
    [DivisionCustom3]    VARCHAR (50) NULL,
    [DivisionCustom4]    VARCHAR (50) NULL,
    [DivisionCustom5]    VARCHAR (50) NULL,
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimDivision_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimDivision_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDivisionSKey] PRIMARY KEY CLUSTERED ([LWDivisionSKey] ASC)
);

