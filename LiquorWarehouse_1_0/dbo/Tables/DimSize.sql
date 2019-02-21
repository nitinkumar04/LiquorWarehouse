CREATE TABLE [dbo].[DimSize]
(
  [LWSizeSKey] INT NOT NULL PRIMARY KEY IDENTITY, 
    [SizeID] CHAR(18) NOT NULL DEFAULT '-1', 
    [SizeLN] NVARCHAR(100) NOT NULL DEFAULT 'No Data', 
    [LWSizeURL] NVARCHAR(100) NOT NULL DEFAULT 'No Data' , 
    [ExternalID] VARCHAR(20) NULL, 
    [LiterVolume] DECIMAL(8, 6) NULL, 
    [ContainerType] NVARCHAR(30) NULL, 
    [PackageType] NVARCHAR(20) NULL, 
    [9LEquivalent] DECIMAL(12, 10) NULL, 
    [Conversion1] DECIMAL(13, 11) NULL, 
    [Conversion2] DECIMAL(13, 11) NULL, 
    [BottlesPerCase] DECIMAL(13, 11) NULL, 
    [LWSourceID] INT NOT NULL DEFAULT -1, 
    [SourceCreateDate] DATETIME NULL, 
    [SourceModifiedDate] DATETIME NULL, 
    [LWCreateDate] DATETIME NOT NULL DEFAULT getdate(), 
    [LWModifiedDate] DATETIME NOT NULL DEFAULT getdate()
)
