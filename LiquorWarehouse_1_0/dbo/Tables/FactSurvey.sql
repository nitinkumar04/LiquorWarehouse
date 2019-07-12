CREATE TABLE [dbo].[FactSurvey]
(
  LWSurveyQuestionSKey        int            not null default -1,
  LWSurveySKey                int            not null default -1,
  AnswerStatus                nvarchar(50)   null,
  AnswerText                  nvarchar(300)  null,
  AnswerCurrency              money          null,
  AnswerNumber                decimal(24,8)  null,
  AnswerPercent               decimal(4,1)   null,
  LWAnswerCheckFlag           int            null,
  MatchingTargetPoints        decimal(4,1)   null,      
  [LWSourceID]                INT            NOT NULL DEFAULT -1, 
  [SourceCreateDate]          DATETIME       NULL, 
  [SourceModifiedDate]        DATETIME       NULL, 
  [LWCreateDate]              DATETIME       NOT NULL DEFAULT (getdate()), 
  [LWModifiedDate]            DATETIME       NOT NULL DEFAULT (getdate()), 
CONSTRAINT [PK_FactSurvey] PRIMARY KEY ([LWSurveySKey],[LWSurveyQuestionSKey])
)
