CREATE TABLE [dbo].[DimGoalType]
(
  [LWGoalTypeSKey]      int           not null identity(1,1),
  [GoalTypeLN]          varchar(25)  not null default 'No Data',
  [LWSourceID]             INT           NOT NULL DEFAULT -1,
  [SourceCreateDate]       DATETIME      NULL,
  [SourceModifiedDate]     DATETIME      NULL,
  [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimGoalType_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimGoalType_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_LWGoalTypeSKey] PRIMARY KEY CLUSTERED ([LWGoalTypeSKey] ASC)
)
