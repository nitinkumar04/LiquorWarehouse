CREATE TABLE [dbo].[DimRetailerDivision]
(
    [LWRetailerDivisionSKey]  INT          IDENTITY (1, 1) NOT NULL,
    [RetailerDivisionID]      char (18) NOT NULL DEFAULT '-1',
    RetailerDivisionLN    nvarchar(100) not null default '-',
    [LWSourceID]            INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]      DATETIME     NULL,
    [SourceModifiedDate]    DATETIME     NULL,
    [LWCreateDate]          DATETIME     CONSTRAINT [DF_DimRetailerDivision_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]        DATETIME     CONSTRAINT [DF_DimRetailerDivision_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerDivisionSKey] PRIMARY KEY CLUSTERED ([LWRetailerDivisionSKey] ASC)
)
