CREATE TABLE [dbo].[DimSurvey]
(
    [LWSurveySKey]       INT          NOT NULL IDENTITY(1,1), 
    [SurveyID]           CHAR(18)     NOT NULL DEFAULT '-1',
    SurveyDate           datetime     not null default '1/1/1900',
    [LWSurveyPlanSKey]   INT          NOT NULL DEFAULT -1, 
    LWRetailerSKey       int          not null default -1,
    LWAuditedSurveySKey  int          not null default -1,
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimSurvey_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimSurvey_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimSurvey] PRIMARY KEY ([LWSurveySKey]) 
)
