CREATE TABLE [dbo].[DimSize]
(
  [LWSizeSKey]				INT				NOT NULL IDENTITY(1,1), 
    [SizeID]				CHAR(18)		NOT NULL DEFAULT '-1', 
    [SizeLN]				NVARCHAR(200)	NOT NULL DEFAULT 'No Data', 
    [LWSizeURL]				NVARCHAR(100)	NOT NULL DEFAULT 'No Data' , 
    [ExternalID]			VARCHAR(40)		NULL, 
    [LiterVolume]			DECIMAL(21, 15)	NULL, 
    [ContainerType]			NVARCHAR(30)	NULL, 
    [PackageType]			NVARCHAR(20)	NULL, 
    [L9Equivalent]			DECIMAL(14, 10)	NULL, 
    [Conversion1]			DECIMAL(19, 15)	NULL, 
    [Conversion2]			DECIMAL(19, 15)	NULL, 
    [BottlesPerCase]		DECIMAL(14, 11)	NULL,
	[ActiveStatus]			VARCHAR(20)		NULL,
	[LWExistsInSFFlag]		INT				NOT NULL DEFAULT -1,
    [LWSourceID]			INT				NOT NULL DEFAULT -1, 
    [SourceCreateDate]		DATETIME		NULL, 
    [SourceModifiedDate]	DATETIME		NULL, 
    [LWCreateDate]			DATETIME		CONSTRAINT [DF_DimSize_LWCreateDate] DEFAULT (getdate()) NOT NULL, 
    [LWModifiedDate]		DATETIME		CONSTRAINT [DF_DimSize_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
	CONSTRAINT [PK_DimSize] PRIMARY KEY ([LWSizeSKey]) 
)
