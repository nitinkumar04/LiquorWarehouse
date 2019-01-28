CREATE TABLE [dbo].[DimCompany] (
    [LWCompanySKey]      INT          IDENTITY (1, 1) NOT NULL,
    [CompanyID]          char (18) NOT NULL DEFAULT '-1',
    [CompanyLN]          VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [CompanyCustom1]     VARCHAR (50) NULL,
    [CompanyCustom2]     VARCHAR (50) NULL,
    [LWSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimCompany_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimCompany_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWCompanySKey] PRIMARY KEY CLUSTERED ([LWCompanySKey] ASC)
);

