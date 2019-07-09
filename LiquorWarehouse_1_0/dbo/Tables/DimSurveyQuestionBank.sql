CREATE TABLE [dbo].[DimSurveyQuestionBank]
(
  LWSurveyQuestionBankSKey int           identity(1,1) not null default -1,
  SurveyQuestionBankId     char(16)      NOT NULL DEFAULT '-1',
  SurveyQuestionBankLN     nvarchar(100) NOT NULL DEFAULT 'No Data',
  QuestionText             nvarchar(270) NOT NULL DEFAULT 'No Data',
  QuestionType             nvarchar(100) NOT NULL DEFAULT 'No Data',
  SalesDriver              nvarchar(100) NOT NULL DEFAULT 'No Data',
  [LWActiveFlag]           INT           NOT NULL DEFAULT -1,
  [LWSourceID]             INT           NOT NULL DEFAULT -1,
  [SourceCreateDate]       DATETIME      NULL,
  [SourceModifiedDate]     DATETIME      NULL,
  [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimSurveyQuestionBank_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimSurveyQuestionBank_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_LWSurveyQuestionBankSKey] PRIMARY KEY CLUSTERED ([LWSurveyQuestionBankSKey] ASC)
)
