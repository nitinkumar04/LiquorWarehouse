CREATE TABLE [dbo].[DimBrand]
(
  [LWBrandSKey] INT NOT NULL IDENTITY, 
    [LWBrandID] char(18) NOT NULL DEFAULT '-1', 
    [LWBrandLN] NVARCHAR(100) NOT NULL DEFAULT 'No Data', 
    [LWBrandURL] NVARCHAR(100) NOT NULL DEFAULT 'No Data', 
    [BrandExternalID] VARCHAR(20) NULL, 
    [LWSupplierSKey] INT NOT NULL DEFAULT -1, 
    [BrandOwnership] NVARCHAR(100) NULL, 
    [KeyBrandFlag] INT NOT NULL DEFAULT -1, 
    [VisibleFlag] INT NOT NULL DEFAULT -1, 
    [Attachments] INT NOT NULL DEFAULT 0, 
    [BrandCustomString1] NVARCHAR(200) NULL, 
    [BrandCustomString2] NVARCHAR(200) NULL, 
    [BrandCustomPicklist1] NVARCHAR(200) NULL, 
    [BrandCustomPicklist2] NVARCHAR(200) NULL, 
    [LWSourceID]               INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]         DATETIME     NULL,
    [SourceModifiedDate]       DATETIME     NULL,
    [LWCreateDate]             DATETIME     CONSTRAINT [DF_DimBrand_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]           DATETIME     CONSTRAINT [DF_DimBrand_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimBrand] PRIMARY KEY ([LWBrandSKey]) 
)
