CREATE TABLE [dbo].[DimSurveyQuestionBank]
(
  LWSurveyQuestionBankSKey INT NOT NULL identity(1,1), 
  SurveyLN nvarchar(100) not null DEFAULT 'No Data',
  Question nvarchar(300) not null DEFAULT 'No Data',
  LWSurveyTypeSKey INT NOT NULL DEFAULT -1, 
    CONSTRAINT [PK_DimSurveyQuestionBank] PRIMARY KEY ([LWSurveyQuestionBankSKey]) 
)
