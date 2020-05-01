CREATE TABLE [dbo].[TempSurveyFact](
	[AccountDimID] [varchar](18) NULL,
	[AccountTeamDimID] [varchar](18) NULL DEFAULT ('-1'),
	[AccountUniverseDimID] [varchar](18) NULL,
	[AltStartDate] [varchar](50) NULL,
	[AltEndDate] [varchar](50) NULL,
	[AltStartDateID] [varchar](50) NULL,
	[AltEndDateID] [varchar](50) NULL,
	[AnswerAttachments] [varchar](100) NULL,
	[AnswerConditionalIndicator] [varchar](50) NULL,
	[AnswerCheckbox] [varchar](100) NULL,
	[AnswerCurrency] [varchar](50) NULL,
	[AnswerCustomCurrency1] [varchar](50) NULL,
	[AnswerCustomFact1] [varchar](50) NULL,
	[AnswerCustomFact2] [varchar](50) NULL,
	[AnswerCustomFact3] [varchar](50) NULL,
	[AnswerCustomFact4] [varchar](50) NULL,
	[AnswerCustomFact5] [varchar](50) NULL,
	[AnswerCustomText1] [varchar](255) NULL,
	[AnswerCustomText2] [varchar](255) NULL,
	[AnswerCustomText3] [varchar](255) NULL,
	[AnswerCustomText4] [varchar](255) NULL,
	[AnswerCustomText5] [varchar](255) NULL,
	[AnsweredIndicator] [varchar](50) NULL,
	[AnswerExternalID] [varchar](200) NULL,
	[AnswerID] [varchar](18) NULL,
	[AnswerMatchTargetPoints] [varchar](50) NULL,
	[AnswerMostRecent] [varchar](50) NULL,
	[AnswerMultipleIndicator] [varchar](50) NULL,
	[AnswerName] [varchar](100) NULL,
	[AnswerNumber] [varchar](100) NULL,
	[AnswerOrder] [varchar](100) NULL,
	[AnswerPercent] [varchar](50) NULL,
	[AnswerPoints] [varchar](50) NULL,
	[AnswerReferenceTo] [varchar](200) NULL,
	[AnswerText] [varchar](300) NULL,
	[AnswerValue] [varchar](100) NULL,
	[AnswerURL] [varchar](250) NULL,
	[AuditedIndicator] [varchar](50) NULL,
	[AuditedID] [varchar](18) NULL,
	[AuditNotes] [varchar](300) NULL,
	[AuditStatus] [varchar](100) NULL,
	[AuditAnswerID] [varchar](18) NULL,
	[CompetitorDimID] [varchar](18) NULL,
	[CreatedDate] [varchar](50) NULL,
	[CurrencyDimID] [varchar](18) NULL,
	[CustomCurrency1] [varchar](50) NULL,
	[CustomCurrency2] [varchar](50) NULL,
	[CustomDate1] [varchar](50) NULL,
	[CustomDate2] [varchar](50) NULL,
	[CustomNumber1] [varchar](100) NULL,
	[CustomNumber2] [varchar](100) NULL,
	[CustomPicklist1] [varchar](100) NULL,
	[CustomPicklist2] [varchar](100) NULL,
	[CustomText1] [varchar](255) NULL,
	[CustomText2] [varchar](255) NULL,
	[CustomText3] [varchar](255) NULL,
	[CustomText4] [varchar](255) NULL,
	[CustomText5] [varchar](255) NULL,
	[Distance] [varchar](50) NULL,
	[EndDate] [varchar](50) NULL,
	[EndDateID] [varchar](50) NULL,
	[FiscalDateDimID] [varchar](50) NULL,
	[FiscalDateID] [varchar](50) NULL,
	[FiscalDate] [varchar](50) NULL,
	[FiscalYear] [varchar](50) NULL,
	[FiscalMonth] [varchar](50) NULL,
	[Geocode] [varchar](100) NULL,
	[Granularity] [varchar](100) NULL,
	[ID] [varchar](18) NOT NULL,
	[ImageDescription] [varchar](300) NULL,
	[ImageID] [varchar](18) NULL,
	[ImageInd] [varchar](50) NULL,
	[ImageName] [varchar](200) NULL,
	[ImageURL] [varchar](250) NULL,
	[ImageURLDashboard] [varchar](300) NULL,
	[ImageURLTable] [varchar](300) NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[MobileIndicator] [varchar](50) NULL,
	[ModifiedDate] [varchar](50) NULL,
	[Name] [varchar](200) NULL,
	[PersonDimID] [varchar](18) NULL,
	[PreviousID] [varchar](18) NULL,
	[PreviousIndicator] [varchar](50) NULL,
	[ProductDimID] [varchar](50) NULL,
	[RptFromDate] [varchar](50) NULL,
	[RptFromDateID] [varchar](50) NULL,
	[SalesDivisionDimID] [varchar](18) NULL,
	[Source] [varchar](200) NULL,
	[SpendDimID] [varchar](18) NULL,
	[StartDate] [varchar](50) NULL,
	[StartDateID] [varchar](50) NULL,
	[SurveyDimID] [varchar](18) NULL,
	[SurveyExternalID] [varchar](200) NULL,
	[SurveyID] [varchar](18) NULL,
	[SurveyOrderFact] [varchar](100) NULL,
	[SurveyName] [varchar](100) NULL,
	[SurveyRecordType] [varchar](100) NULL,
	[SurveyStatus] [varchar](200) NULL,
	[SurveyURL] [varchar](250) NULL,
	[TxnTypeID] [varchar](18) NULL,
	[TxnDate] [varchar](50) NULL,
	[TxnDateID] [varchar](50) NULL,
	[Type] [varchar](200) NULL,
	[URL] [varchar](250) NULL,
	[GVWCreatedDate] [datetime] NOT NULL,
	[GVWLastModifiedDate] [datetime] NOT NULL,
	[GVWSourceID] [int] NULL,
	[GVWDeleted] [bit] NULL,
 CONSTRAINT [PK_TempSurveyFact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT ('-1') FOR [AccountDimID]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT ('-1') FOR [AccountUniverseDimID]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT ('-1') FOR [CompetitorDimID]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT ('USD') FOR [CurrencyDimID]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT ('-1') FOR [PersonDimID]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT ('-1') FOR [ProductDimID]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT ('-1') FOR [SpendDimID]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT ('-1') FOR [SurveyDimID]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT (getdate()) FOR [GVWCreatedDate]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT (getdate()) FOR [GVWLastModifiedDate]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT ((-1)) FOR [GVWSourceID]
GO

ALTER TABLE [dbo].[TempSurveyFact] ADD  DEFAULT ('0') FOR [GVWDeleted]
GO
