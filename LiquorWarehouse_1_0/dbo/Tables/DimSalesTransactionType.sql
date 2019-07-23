CREATE TABLE [dbo].[DimSalesTransactionType]
(
  [LWSalesTransactionTypeSKey]      int           not null identity(1,1),
  [SalesTransactionTypeID]          char(18)      not null default '-1',
  [SalesTransactionTypeLN]          varchar(100)  not null default 'No Data',
  [LWActiveFlag]           INT           NOT NULL DEFAULT -1,
  [LWSourceID]             INT           NOT NULL DEFAULT -1,
  [SourceCreateDate]       DATETIME      NULL,
  [SourceModifiedDate]     DATETIME      NULL,
  [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimSalesTransactionType_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimSalesTransactionType_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_LWSalesGoalTransactionSKey] PRIMARY KEY CLUSTERED ([LWSalesTransactionTypeSKey] ASC)
)
