CREATE TABLE [dbo].[DimBrand]
(
  [LBBrandSKey] INT NOT NULL IDENTITY, 
    [LBBrandID] char(18) NOT NULL DEFAULT '-1', 
    [LBBrandLN] NVARCHAR(100) NOT NULL DEFAULT 'No Data', 
    [LBBrandURL] NVARCHAR(100) NOT NULL DEFAULT 'No Data', 
    [BrandExternalID] VARCHAR(20) NULL, 
    [LBSupplierSKey] INT NOT NULL DEFAULT -1, 
    [BrandOwnership] NVARCHAR(100) NULL, 
    [KeyBrandFlag] INT NOT NULL DEFAULT -1, 
    [VisibleFlag] INT NOT NULL DEFAULT -1, 
    [Attachments] INT NOT NULL DEFAULT 0, 
    [BrandCustomString1] NVARCHAR(200) NULL, 
    [BrandCustomString2] NVARCHAR(200) NULL, 
    [BrandCustomPicklist1] NVARCHAR(200) NULL, 
    [BrandCustomPicklist2] NVARCHAR(200) NULL, 
    [LBSourceID]               INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]         DATETIME     NULL,
    [SourceModifiedDate]       DATETIME     NULL,
    [LBCreateDate]             DATETIME     CONSTRAINT [DF_DimBrand_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]           DATETIME     CONSTRAINT [DF_DimBrand_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimBrand] PRIMARY KEY ([LBBrandSKey]) 
)
