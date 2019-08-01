CREATE TABLE [dbo].[DimSurveyPlanOwner]
(
    [LWSurveyPlanOwnerSKey]    INT          IDENTITY (1, 1) NOT NULL,
    [SurveyPlanOwnerID]        char (18) NOT NULL DEFAULT '-1',
    [SurveyPlanOwnerFirstName] VARCHAR (50) NULL,
    [SurveyPlanOwnerLastName]  VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWActiveFlag]           INT          NOT NULL DEFAULT -1,
    [LWSourceID]             INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]       DATETIME     NULL,
    [SourceModifiedDate]     DATETIME     NULL,
    [LWCreateDate]           DATETIME     CONSTRAINT [DF_DimSurveyPlanOwner_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME     CONSTRAINT [DF_DimSurveyPlanOwner_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWSurveyPlanOwnerSKey] PRIMARY KEY CLUSTERED ([LWSurveyPlanOwnerSKey] ASC)
)
