CREATE TABLE [dbo].[DimGoalTransactionType]
(
  [LWGoalTransactionTypeSKey]      int           not null identity(1,1),
  [GoalTransactionTypeLN]          varchar(100)  not null default 'No Data',
  [LWSourceID]             INT           NOT NULL DEFAULT -1,
  [SourceCreateDate]       DATETIME      NULL,
  [SourceModifiedDate]     DATETIME      NULL,
  [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimGoalTransactionType_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimGoalTransactionType_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_LWGoalTransactionTypeSKey] PRIMARY KEY CLUSTERED ([LWGoalTransactionTypeSKey] ASC)
)