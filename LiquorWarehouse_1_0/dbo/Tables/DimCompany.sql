CREATE TABLE [dbo].[DimCompany] (
    [LBCompanySKey]      INT          IDENTITY (1, 1) NOT NULL,
    [CompanyID]          char (18) NOT NULL DEFAULT '-1',
    [CompanyLN]          VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [CompanyCustom1]     VARCHAR (50) NULL,
    [CompanyCustom2]     VARCHAR (50) NULL,
    [LBSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LBCreateDate]       DATETIME     CONSTRAINT [DF_DimCompany_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]     DATETIME     CONSTRAINT [DF_DimCompany_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LBCompanySKey] PRIMARY KEY CLUSTERED ([LBCompanySKey] ASC)
);

