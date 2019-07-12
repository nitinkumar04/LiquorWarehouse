CREATE TABLE [dbo].[DimSurveyQuestion]
(
  LWSurveyQuestionSKey  int           not null identity(1,1),
  SurveyQuestionID      char(8)       not null default '-1',
  SurveyQuestionText    nvarchar(300) not null default 'No Data',
  LWProductSKey         int           not null default -1,
  Points                decimal(4,1)  null,
  GroupType             nvarchar(100) null,
  [LWSourceID]          INT           NOT NULL DEFAULT -1,
  [SourceCreateDate]    DATETIME      NULL,
  [SourceModifiedDate]  DATETIME      NULL,
  [LWCreateDate]        DATETIME      CONSTRAINT [DF_DimQuestionSurvey_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]      DATETIME      CONSTRAINT [DF_DimQuestionSurvey_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_DimQuestionSurvey] PRIMARY KEY ([LWSurveyQuestionSKey]) 
)
