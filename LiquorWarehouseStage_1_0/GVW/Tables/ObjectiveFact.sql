CREATE TABLE [GVW].[ObjectiveFact](
	[ID]                VARCHAR(18)      NOT NULL,
	[CreatedDate]                     [char](10)      NULL,
	[ModifiedDate]                    [char](10)      NULL,
	[AccountDimID]                   VARCHAR(18)      NULL DEFAULT '-1',
	[CurrencyDimID]                  VARCHAR(18)      NULL DEFAULT 'USD',
	[FiscalDateDimID]               [VARCHAR](10)      NULL,
	[GeographyDimID]                 VARCHAR(18)      NULL DEFAULT '-1' ,
	[ProductDimID]                   VARCHAR(18)      NULL DEFAULT '-1',
	[PersonDimID]                    VARCHAR(18)      NULL DEFAULT '-1',
	[SpendDimID]                     VARCHAR(18)      NULL DEFAULT '-1',
	[SurveyDimID]                    VARCHAR(18)      NULL DEFAULT '-1',
	[SurveyFactID]                   VARCHAR(18)      NULL DEFAULT '-1',
	[AccountCallFactID]             VARCHAR(18)      NULL DEFAULT '-1',
	[TxnTypeID]                      [varchar](10)   NULL,
	[TransactionDate]                 [char](10)      NULL,
	[FiscalDate]                      [char](10)      NULL,
	[FiscalYear]                      [char](4)       NULL,
	[FiscalMonth]                     [char](2)       NULL,
	[StartDate]                       [char](10)      NULL,
	[EndDate]                         [char](10)      NULL,
	[CreateDate]                      [char](10)      NULL,
	[RptFromDate]                    [char](10)      NULL,
	[RptThruDate]                    [char](10)      NULL,
	[RptCurrentInd]                  [varchar](5)    NULL,
	[Name]                   [nvarchar](100) NULL,
	[URL]                    [nvarchar](250) NULL,
	[ExtID]                 [varchar](30)   NULL,
	[Priority]               [varchar](20)   NULL,
	[Status]                 [nvarchar](300) NULL,
	[Type]                   [nvarchar](50)  NULL,
	[Description]            [nvarchar](500) NULL,
	[Details]                [nvarchar](500) NULL,
	[Results]                [nvarchar](500) NULL,
	[Custom1]               [nvarchar](255) NULL,
	[Custom2]               [nvarchar](255) NULL,
	[Custom3]               [nvarchar](255) NULL,
	[Custom4]               [nvarchar](255) NULL,
	[Custom5]               [nvarchar](255) NULL,
	[Custom6]               [nvarchar](255) NULL,
	[Custom7]               [nvarchar](255) NULL,
	[Custom8]               [nvarchar](255) NULL,
	[Custom9]               [nvarchar](255) NULL,
	[Custom10]               [nvarchar](255) NULL,
	[CustomCheckbox1]      [varchar](10)   NULL,
	[CustomCheckbox2]      [varchar](10)   NULL,
	[CustomPicklist1]      [nvarchar](200) NULL,
	[CustomPicklist2]      [nvarchar](200) NULL,
	[CustomPicklist3]      [nvarchar](200) NULL,
	[CustomPicklist4]      [nvarchar](200) NULL,
	[CasePerYear]          VARCHAR(50)  NULL,
	[CustomCurrency1]      VARCHAR(50)         NULL,
	[CustomCurrency2]      VARCHAR(50)         NULL,
	[CustomFact1]          VARCHAR(50) NULL,
	[CustomFact2]          VARCHAR(50) NULL,
	[Sequence]               [nvarchar](10)  NULL,
	[ProductLevel]          [varchar](15)   NULL,
	[ProductName]           [nvarchar](100) NULL,
	[FactGranularity]       [varchar](30)   NULL,
	[PlanID]                VARCHAR(18)      NULL,
	[PlanName]              [nvarchar](100) NULL,
	[PlanURL]               [varchar](250)  NULL,
	[PlanImport]            [varchar](20)   NULL,
	[PlanInd]               [varchar](10)   NULL,
	[PlanDescription]       [nvarchar](255) NULL,
	[TxnAltDate]                     [char](10)      NULL,
	[SurveyQuestionPoints] VARCHAR(50) NULL,
	[AccountTeamDimID]              VARCHAR(18)      NULL DEFAULT '-1',
	[SalesDivisionDimID]            [VARCHAR](18)      NULL DEFAULT '-1',
	[TxnDateID]                      [VARCHAR](5)       NULL,
	[TxnAltDateID]                  [VARCHAR](5)       NULL DEFAULT '0',
	[FiscalDateID]                   [VARCHAR](5)       NULL,
	[StartDateID]                    [VARCHAR](5)       NULL,
	[EndDateID]                      [VARCHAR](10)       NULL,
	[CreateDateID]                   [VARCHAR](5)       NULL,
	[RptFromDateID]                 [VARCHAR](5)       NULL,
	[RptThruDateID]                 [VARCHAR](5)       NULL,
	[ProductSetDimID]               VARCHAR(18)      NULL DEFAULT 'N',
	[SalesGoalFactID]               VARCHAR(18)      NULL DEFAULT 'N',
	[AccountCallSequenceStatusID]           VARCHAR(18)      NULL DEFAULT '-1',
    GVWCreatedDate      Datetime    default getdate() NOT NULL,
    GVWLastModifiedDate Datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0'
	CONSTRAINT [PK_ObjectiveFact] PRIMARY KEY ([ID]), 
    [GVWHash] VARCHAR(32) NOT NULL DEFAULT 0
);