CREATE TABLE [dbo].[DimSurveyOwner] (
    [LWSurveyOwnerSKey]      INT          IDENTITY (1, 1) NOT NULL,
    [SurveyOwnerID]          char (18)    NOT NULL DEFAULT '-1',
    [SurveyOwnerFirstName]   VARCHAR (25) NULL,
    [SurveyOwnerLastName]    VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWActiveFlag]           INT          NOT NULL DEFAULT -1,
    [LWSourceID]             INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]       DATETIME     NULL,
    [SourceModifiedDate]     DATETIME     NULL,
    [LWCreateDate]           DATETIME     CONSTRAINT [DF_DimSurveyOwner_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME     CONSTRAINT [DF_DimSurveyOwner_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWSurveyOwnerSKey] PRIMARY KEY CLUSTERED ([LWSurveyOwnerSKey] ASC)
);

