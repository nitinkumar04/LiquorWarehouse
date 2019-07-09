CREATE TABLE [dbo].[DimActivity]
(
  [LWActivitySKey]         INT           IDENTITY(1,1)  NOT NULL,
  ActivityID               CHAR(18)      NOT NULL DEFAULT '-1',
  ActivityLN               NVARCHAR(100) NOT NULL DEFAULT 'No Data',
  LWActivityURL            NVARCHAR(200) NOT NULL DEFAULT 'No Data',
  LWActivityGoalTypeSKey   INT           NOT NULL DEFAULT -1,
  LWActivityGoalGroupSKey  INT           NOT NULL DEFAULT -1,
  LWActivityGoalOwnerSKey  INT           NOT NULL DEFAULT -1,
  ActivityGoal             INT           NULL,
  [LWActiveFlag]           INT           NOT NULL DEFAULT -1,
  [LWSourceID]             INT           NOT NULL DEFAULT -1,
  [SourceCreateDate]       DATETIME      NULL,
  [SourceModifiedDate]     DATETIME      NULL,
  [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimActivity_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimActivity_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_LWActivitySKey] PRIMARY KEY CLUSTERED ([LWActivitySKey] ASC)
)
