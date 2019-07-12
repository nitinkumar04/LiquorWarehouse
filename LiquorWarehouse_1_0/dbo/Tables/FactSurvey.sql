CREATE TABLE [dbo].[FactSurvey]
(
  LWSurveySKey                int            not null default -1,
  SurveyQuestion              nvarchar(300)  not null default -1,
  SurveyAnswer                nvarchar(300)  null,
  SurveyAnswerStatus          nvarchar(50)   null,
  LWMetTargetFlag             int            not null default -1,
  
  [LWSourceID]                INT            NOT NULL DEFAULT -1, 
  [SourceCreateDate]          DATETIME       NULL, 
  [SourceModifiedDate]        DATETIME       NULL, 
  [LWCreateDate]              DATETIME       NOT NULL DEFAULT (getdate()), 
  [LWModifiedDate]            DATETIME       NOT NULL DEFAULT (getdate()), 
CONSTRAINT [PK_FactSurveyAnswer] PRIMARY KEY ([LWSurveySKey],[LWSurveyQuestionBankSKey],[LWSurveyPlanSKey])
)
