CREATE TABLE [dbo].[DimSalesGoalPlan]
(
  LWSalesGoalPlanSKey      int           not null identity(1,1),
  SalesGoalPlanID          char(18)      not null default '-1',
  SalesGoalPlanLN          nvarchar(100) not null default 'No Data',
  SalesGoalPlanDescription nvarchar(250) null,
  [ActiveStatus]	       VARCHAR(25)	 NULL,
  [LWExistsInSFFlag]	   INT		     NOT NULL DEFAULT -1,
  [LWSourceID]             INT			 NOT NULL DEFAULT -1,
  [SourceCreateDate]       DATETIME		 NULL,
  [SourceModifiedDate]     DATETIME		 NULL,
  [LWCreateDate]           DATETIME		 CONSTRAINT [DF_DimSalesGoalPlan_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]         DATETIME		 CONSTRAINT [DF_DimSalesGoalPlan_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_DimSalesGoalPlan] PRIMARY KEY ([LWSalesGoalPlanSKey]) 
)
