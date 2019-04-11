CREATE TABLE [dbo].[DimSurvey]
(
    [LWSurveySKey] INT NOT NULL, 
    [SurveyID] CHAR(18) NOT NULL DEFAULT '-1', 
    [LWItemSKey] INT NOT NULL DEFAULT -1, 
    [LWAccountSKey] INT NOT NULL DEFAULT -1, 
    [LWSurveyPlanSKey] INT NOT NULL DEFAULT -1, 
    [LWSurveyQuestionSKey] INT NOT NULL DEFAULT -1, 
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimSurvey_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimSurvey_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimSurvey] PRIMARY KEY ([LWSurveySKey]) 
)
