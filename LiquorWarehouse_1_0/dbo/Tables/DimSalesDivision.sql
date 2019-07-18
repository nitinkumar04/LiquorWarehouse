CREATE TABLE [dbo].[DimSalesDivision]
(
  LWSalesDivisionSKey      int           not null identity(1,1),
  SalesDivisionID          char(18)      not null default '-1',
  SalesDivisionLN          varchar(100)  not null default 'No Data',
  [LWActiveFlag]           INT           NOT NULL DEFAULT -1,
  [LWSourceID]             INT           NOT NULL DEFAULT -1,
  [SourceCreateDate]       DATETIME      NULL,
  [SourceModifiedDate]     DATETIME      NULL,
  [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimSalesDivision_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimSalesDivision_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_LWSalesDivisionSKey] PRIMARY KEY CLUSTERED ([LWSalesDivisionSKey] ASC)
)
