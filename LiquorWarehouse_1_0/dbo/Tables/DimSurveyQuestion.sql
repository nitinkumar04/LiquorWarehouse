CREATE TABLE [dbo].[DimSurveyQuestion]
(
  LWSurveyQuestionSKey  int           not null identity(1,1),
  SurveyQuestionID      char(18)      not null default '-1',
  SurveyQuestionText    nvarchar(300) not null default 'No Data',
  [LWProductSizeSKey]         int           not null default -1,
  Points                decimal(4,1)  null,
  GroupType             nvarchar(100) null,
  [ActiveStatus]		VARCHAR(25)	  NULL,
  [LWExistsInSFFlag]	INT           NOT NULL DEFAULT -1,
  [LWSourceID]          INT           NOT NULL DEFAULT -1,
  [SourceCreateDate]    DATETIME      NULL,
  [SourceModifiedDate]  DATETIME      NULL,
  [LWCreateDate]        DATETIME      CONSTRAINT [DF_DimSurveyQuestion_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]      DATETIME      CONSTRAINT [DF_DimSurveyQuestion_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_DimSurveyQuestion] PRIMARY KEY ([LWSurveyQuestionSKey]) 
)
