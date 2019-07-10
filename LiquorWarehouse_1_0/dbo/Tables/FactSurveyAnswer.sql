CREATE TABLE [dbo].[FactSurveyAnswer]
(
  LWSurveySKey                int            not null default -1,
  [LWSurveyQuestionBankSKey]  int            not null default -1,
  [LWSurveyPlanSKey]          int            not null default -1,
  SurveyAnswer                nvarchar(300)  null,

  [LWSourceID]                INT            NOT NULL DEFAULT -1, 
  [SourceCreateDate]          DATETIME       NULL, 
  [SourceModifiedDate]        DATETIME       NULL, 
  [LWCreateDate]              DATETIME       NOT NULL DEFAULT (getdate()), 
  [LWModifiedDate]            DATETIME       NOT NULL DEFAULT (getdate()), 
CONSTRAINT [PK_FactSurveyAnswer] PRIMARY KEY ([LWSurveySKey],[LWSurveyQuestionBankSKey],[LWSurveyPlanSKey])
)
