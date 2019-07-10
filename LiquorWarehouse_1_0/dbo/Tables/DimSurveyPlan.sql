CREATE TABLE [dbo].[DimSurveyPlan]
(
    [LWSurveyPlanSKey]    INT           IDENTITY(1,1) NOT NULL, 
    [SurveyPlanID]        CHAR(18)      NOT NULL DEFAULT '-1', 
    SurveyPlanLN          nvarchar(100) NOT NULL DEFAULT 'No Data',
    LWSurveyPlanOwnerSKey int           NOT NULL DEFAULT -1,
    LWSurveyPlanTypeSKey  int           NOT NULL DEFAULT -1,
    LWRetailerSKey        int           not null default -1,
    [LWTerritorySKey]     INT           NOT NULL DEFAULT -1, 
    SurveyStartDate       date          null,
    SurveyEndDate         date          null,
    [LWSourceID]          INT           NOT NULL DEFAULT -1,
    [SourceCreateDate]    DATETIME      NULL,
    [SourceModifiedDate]  DATETIME      NULL,
    [LWCreateDate]        DATETIME      CONSTRAINT [DF_DimSurveyPlan_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]      DATETIME      CONSTRAINT [DF_DimSurveyPlan_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimSurveyPlan] PRIMARY KEY ([LWSurveyPlanSKey]) 
)