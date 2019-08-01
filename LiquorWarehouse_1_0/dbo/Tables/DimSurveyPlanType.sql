CREATE TABLE [dbo].[DimSurveyPlanType]
(
    [LWSurveyPlanTypeSKey]	INT           IDENTITY (1, 1) NOT NULL,
    [SurveyPlanTypeID]      char (18)     NOT NULL DEFAULT '-1',
    SurveyPlanTypeLN        nvarchar(100) not null default '-',
    SalesforceDeveloperName varchar(100)  null,
    LWActiveFlag            int           not null default -1,
    [LWSourceID]            INT           NOT NULL DEFAULT -1,
    [SourceCreateDate]      DATETIME      NULL,
    [SourceModifiedDate]    DATETIME      NULL,
    [LWCreateDate]          DATETIME      CONSTRAINT [DF_DimSurveyPlanType_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]        DATETIME      CONSTRAINT [DF_DimSurveyPlanType_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWSurveyPlanTypeSKey] PRIMARY KEY CLUSTERED ([LWSurveyPlanTypeSKey] ASC)
)
