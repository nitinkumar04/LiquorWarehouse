create table DimProductSize (
  LWProductSizeSKey       int             identity(1,1)   not null,
  ProductID               char(18)        not null    default('-1'),
  SizeID                  char(18)        not null    default('-1'),
  ProductSizeLN           varchar(250)    not null    default('No Data'),
  [LWProductSizeLevel]        varchar(20)     not null    default('No Data'),
  LWProductSizeURL        varchar(100)    not null    default('No Data'),
  LWProductSizeParentSKey int             null,
  ProductSizeParentID     char(18)        null, 
	[LWExistsInSFFlag]		  INT				NOT NULL DEFAULT -1,
  [LWSourceID]            INT				NOT NULL DEFAULT -1,
  [SourceCreateDate]      DATETIME		NULL,
  [SourceModifiedDate]    DATETIME		NULL,
  [LWCreateDate]          DATETIME		CONSTRAINT [DF_DimProductSize_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]        DATETIME		CONSTRAINT [DF_DimProductSize_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_DimProductSize] PRIMARY KEY ([LWProductSizeSKey])
)
