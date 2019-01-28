CREATE TABLE [dbo].[DimDivision] (
    [LWDivisionSKey]     INT          IDENTITY (1, 1) NOT NULL,
    [DivisionID]         char (18) NOT NULL,
    [DivisionSD]         VARCHAR (10) NOT NULL,
    [DivisionLD]         VARCHAR (50) NOT NULL,
    [DivisionCustom1]    VARCHAR (50) NULL,
    [DivisionCustom2]    VARCHAR (50) NULL,
    [DivisionCustom3]    VARCHAR (50) NULL,
    [DivisionCustom4]    VARCHAR (50) NULL,
    [DivisionCustom5]    VARCHAR (50) NULL,
    [LWCompanySKey]      INT          NOT NULL,
    [LWSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimDivision_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimDivision_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDivisionSKey] PRIMARY KEY CLUSTERED ([LWDivisionSKey] ASC)
);

