﻿CREATE TABLE [GVW].[SurveyDim](
[GVWSurveySKey] int identity(1,1),
[ID] VARCHAR(18) NOT NULL,
[Name] [nvarchar](100) NULL,
[Granularity] [varchar](15) NULL,
[URL] [nvarchar](150) NULL,
[CreatedDate] [char](10) NULL,
[ModifiedDate] [char](10) NULL,
[SurveyPlanID] VARCHAR(18) NULL,
[SurveyPlanURL] [nvarchar](150) NULL,
[SurveyPlanName] [nvarchar](150) NULL,
[SurveyPlanChannel] [varchar](200) NULL,
[SurveyPlanAim] [nvarchar](500) NULL,
[SurveyPlanGoal] [nvarchar](20) NULL,
[SurveyBankID] VARCHAR(18) NULL,
[SurveyBankURL] [nvarchar](100) NULL,
[SurveyBankName] [varchar](50) NULL,
[SurveyBankCategory] [nvarchar](30) NULL,
[SurveyBankMultipleAnswers] [varchar](10) NULL,
[SurveyBankProductOnly] [varchar](20) NULL,
[SurveyBankQuestionText] [nvarchar](250) NULL,
[SurveyBankType] [nvarchar](10) NULL,
[SurveyQuestionID] VARCHAR(18) NULL,
[SurveyQuestionURL] [nvarchar](100) NULL,
[SurveyQuestionName] [varchar](50) NULL,
[SurveyQuestionFormat] [nvarchar](50) NULL,
[SurveyQuestionGroupCategory] [nvarchar](100) NULL,
[SurveyQuestionGroupNumber] [nvarchar](100) NULL,
[SurveyQuestionGroupType] [nvarchar](50) NULL,
[SurveyQuestionMultipleAnswers] [nvarchar](10) NULL,
[SurveyQuestionExternalID] [varchar](30) NULL,
[SurveyQuestionList] [nvarchar](200) NULL,
[SurveyQuestionText] [nvarchar](500) NULL,
[SurveyQuestionTargetCheckbox] [nvarchar](5) NULL,
[SurveyQuestionTargetCurrency] [nvarchar](10) NULL,
[SurveyQuestionTargetNumber] [nvarchar](20) NULL,
[SurveyQuestionTargetPercentage] [nvarchar](10) NULL,
[SurveyQuestionTargetTextList] [nvarchar](300) NULL,
[SurveyQuestionTargetYesNo] [nvarchar](5) NULL,
[SurveyQuestionType] [nvarchar](10) NULL,
[ProductDimID] [varchar](37) NULL,
[SurveyProductURL] [nvarchar](100) NULL,
[SurveyProductName] [nvarchar](100) NULL,
[SurveyProductType] [nvarchar](50) NULL,
[SurveyProductSizeName] [nvarchar](100) NULL,
[SurveyProductSizeExternalID] [nvarchar](30) NULL,
[SurveyProductOwnership] [nvarchar](20) NULL,
[SurveyBankSalesDriver] [nvarchar](30) NULL,
[SurveyQuestionGroupName] [nvarchar](100) NULL,
[SurveyQuestionPoints] [nvarchar](5) NULL,
[SurveyQuestionOrder] [nvarchar](5) NULL,
[SurveyQuestionSalesDriver] [nvarchar](50) NULL,
[SalesDriverDimID] [nvarchar](50) NULL,
[SurveyPlanCustomText1] [nvarchar](200) NULL,
[SurveyPlanCustomText2] [nvarchar](200) NULL,
[SurveyPlanCustomText3] [nvarchar](200) NULL,
[SurveyPlanCustomText4] [nvarchar](200) NULL,
[SurveyPlanCustomText5] [nvarchar](200) NULL,
[SurveyQuestionClusterName] [nvarchar](300) NULL,
[SurveyQuestionClusterNumber] [nvarchar](5) NULL,
[SurveyPlanPublished] [nvarchar](5) NULL,
[SurveyPlanExternalID] [nvarchar](20) NULL,
[SurveyBankExternalID] [nvarchar](20) NULL,
[SurveyBankCustom1] [nvarchar](100) NULL,
[SurveyBankCustom2] [nvarchar](100) NULL,
[SurveyBankCustom3] [nvarchar](100) NULL,
[SurveyBankCustom4] [nvarchar](100) NULL,
[SurveyBankCustom5] [nvarchar](100) NULL,
[SurveyBankCustomFact1] [nvarchar](5) NULL,
[SurveyBankCustomFact2] [nvarchar](5) NULL,
[SurveyBankCustomFact3] [nvarchar](5) NULL,
[SurveyBankCustomFact4] [nvarchar](5) NULL,
[SurveyBankCustomFact5] [nvarchar](5) NULL,
[SurveyQuestionCustom1] [nvarchar](100) NULL,
[SurveyQuestionCustom2] [nvarchar](100) NULL,
[SurveyQuestionCustom3] [nvarchar](100) NULL,
[SurveyQuestionCustom4] [nvarchar](100) NULL,
[SurveyQuestionCustom5] [nvarchar](100) NULL,
[SurveyQuestionCustomFact1] [nvarchar](5) NULL,
[SurveyQuestionCustomFact2] [nvarchar](5) NULL,
[SurveyQuestionCustomFact3] [nvarchar](5) NULL,
[SurveyQuestionCustomFact4] [nvarchar](5) NULL,
[SurveyQuestionCustomFact5] [nvarchar](5) NULL,
[SurveyProductExternalID] [nvarchar](50) NULL,
[CompetitorDimID] VARCHAR(18) NULL,
[SurveyQuestionConditional] [nvarchar](5) NULL,
[SurveyQuestionReferenceTo] [nvarchar](5) NULL,
[SurveyBankReferenceTo] [nvarchar](5) NULL,
GVWCreatedDate      Datetime    default getdate() NOT NULL,
GVWLastModifiedDate Datetime    default getdate() NOT NULL,
GVWSourceID  INT default (-1),
GVWDeleted BIT NULL DEFAULT '0',
GVWHash VARCHAR(32) NOT NULL DEFAULT 0,
CONSTRAINT [PK_SurveyDim] PRIMARY KEY ([GVWSurveySKey])
); 
