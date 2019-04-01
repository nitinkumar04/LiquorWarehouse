CREATE TABLE [dbo].[DimSurveyPlan]
(
  [LWSurveyPlanSKey] INT NOT NULL  identity (1,1), 
  [LWTerritorySKey] INT NOT NULL DEFAULT -1, 
    CONSTRAINT [PK_DimSurveyPlan] PRIMARY KEY ([LWSurveyPlanSKey])
)
