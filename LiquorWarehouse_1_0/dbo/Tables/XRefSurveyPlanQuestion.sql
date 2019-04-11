CREATE TABLE [dbo].[XRefSurveyPlanQuestion]
(
    [LWSurveyPlanQuestionSKey] INT NOT NULL ,
    [LWSurveyPlanSKey] INT NOT NULL DEFAULT -1, 
    [LWSurveyQuestionSKey] INT NOT NULL DEFAULT -1, 
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_XRefSurveyPlanQuestion_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_XRefSurveyPlanQuestion_LWModifiedDate] DEFAULT (getdate()) NOT NULL, 
    CONSTRAINT [PK_XRefSurveyPlanQuestion] PRIMARY KEY ([LWSurveyPlanQuestionSKey]),
)
