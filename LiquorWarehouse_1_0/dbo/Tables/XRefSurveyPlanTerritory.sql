CREATE TABLE [dbo].[XRefSurveyPlanTerritory]
(
    [LWSurveyPlanSKey]           int           not null default -1,
    [LWTerritorySKey]            int           not null default -1,
    [LWSourceID]                 INT           NOT NULL DEFAULT -1,
    [SourceCreateDate]           DATETIME      NULL,
    [SourceModifiedDate]         DATETIME      NULL,
    [LWCreateDate]               DATETIME      CONSTRAINT [DF_XRefSurveyPlanTerritory_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]             DATETIME      CONSTRAINT [DF_XRefSurveyPlanTerritory_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_XRefSurveyPlanTerritory] PRIMARY KEY ([LWSurveyPlanSKey], [LWTerritorySKey]) 
)