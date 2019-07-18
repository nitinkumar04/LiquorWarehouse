CREATE TABLE [dbo].[DimSalesGoalType]
(
  LWSalesGoalTypeSKey      int           not null identity(1,1),
  SalesGoalTypeID          char(18)      not null default '-1',
  SalesGoalTypeLN          varchar(100)  not null default 'No Data',
  [LWActiveFlag]           INT           NOT NULL DEFAULT -1,
  [LWSourceID]             INT           NOT NULL DEFAULT -1,
  [SourceCreateDate]       DATETIME      NULL,
  [SourceModifiedDate]     DATETIME      NULL,
  [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimSalesGoalType_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimSalesGoalType_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_LWSalesGoalTypeSKey] PRIMARY KEY CLUSTERED ([LWSalesGoalTypeSKey] ASC)
)
