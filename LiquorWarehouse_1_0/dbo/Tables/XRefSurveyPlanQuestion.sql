CREATE TABLE [dbo].[XRefSurveyPlanQuestion]
(
    [LWSurveyQuestionBankSKey]   INT           IDENTITY(1,1) NOT NULL, 
    [LWSurveyPlanSKey]           int           not null default -1,
    [LWProductSKey]              INT           NOT NULL DEFAULT -1, 
    LWCompetitorSKey             int           not null default -1,                
    [LWSourceID]                 INT           NOT NULL DEFAULT -1,
    [SourceCreateDate]           DATETIME      NULL,
    [SourceModifiedDate]         DATETIME      NULL,
    [LWCreateDate]               DATETIME      CONSTRAINT [DF_XRefSurveyPlanQuestion_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]             DATETIME      CONSTRAINT [DF_XRefSurveyPlanQuestion_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_XRefSurveyPlanQuestion] PRIMARY KEY ([LWSurveyQuestionBankSKey], [LWSurveyPlanSKey]) 
)