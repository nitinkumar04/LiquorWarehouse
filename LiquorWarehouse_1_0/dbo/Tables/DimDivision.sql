CREATE TABLE [dbo].[DimDivision] (
    [LBDivisionSKey]     INT          IDENTITY (1, 1) NOT NULL,
    [DivisionID]         char (18) NOT NULL,
    [DivisionSD]         VARCHAR (10) NOT NULL,
    [DivisionLD]         VARCHAR (50) NOT NULL,
    [DivisionCustom1]    VARCHAR (50) NULL,
    [DivisionCustom2]    VARCHAR (50) NULL,
    [DivisionCustom3]    VARCHAR (50) NULL,
    [DivisionCustom4]    VARCHAR (50) NULL,
    [DivisionCustom5]    VARCHAR (50) NULL,
    [LBCompanySKey]      INT          NOT NULL,
    [LBSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LBCreateDate]       DATETIME     CONSTRAINT [DF_DimDivision_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]     DATETIME     CONSTRAINT [DF_DimDivision_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBDivisionSKey] PRIMARY KEY CLUSTERED ([LBDivisionSKey] ASC)
);

