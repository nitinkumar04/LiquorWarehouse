CREATE TABLE [GVW].[PromoEventFact](
	[ID] VARCHAR(18) NOT NULL,
	[Type] [varchar](50) NULL,
	[AccountCallFactID] VARCHAR(18) NULL,
	[ActivityFactID] VARCHAR(18) NULL,
	[SpendDimID] VARCHAR(18) NULL,
	[TxnTypeID] [varchar](50) NULL,
	[ActivityGoalDimID] VARCHAR(18) NULL,
	[GeographyDimID] VARCHAR(18) NULL,
	[CurrencyDimID] [varchar](50) NULL,
	[ContactDimID] VARCHAR(18) NULL,
	[AccountDimID] VARCHAR(18) NULL,
	[AcctUnivDimID] VARCHAR(18) NULL,
	[PersonDimID] VARCHAR(18) NULL,
	[ProductDimID] VARCHAR(18) NULL,
	[FiscalDateDimID] [varchar](50) NULL,
	[CreatedDate] [nvarchar](10) NULL,
	[ModifiedDate] [nvarchar](10) NULL,
	[TransactionDate] [nvarchar](10) NULL,
	[StartDate] [nvarchar](10) NULL,
	[FiscalDate] [nvarchar](10) NULL,
	[FiscalMonth] [varchar](50) NULL,
	[FiscalYear] [varchar](50) NULL,
	[CreateDate] [nvarchar](10) NULL,
	[Name] [varchar](50) NULL,
	[URL] [nvarchar](200) NULL,
	[ActivityType] [varchar](50) NULL,
	[ActivityGroup] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[BottlesSold] [varchar](50) NULL,
	[DrinksSold] [varchar](50) NULL,
	[DrinksPurchased] [varchar](50) NULL,
	[ActualCost] [varchar](50) NULL,
	[BrandPromoted] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[ERFReceived] [varchar](50) NULL,
	[TotalBudget] [varchar](50) NULL,
	[BartabBudget] [varchar](50) NULL,
	[StaffBudget] [varchar](50) NULL,
	[FeaturedDrink] [varchar](300) NULL,
	[ConsumersSampled] [varchar](50) NULL,
	[SamplesGiven] [varchar](50) NULL,
	[SamplersRequired] [varchar](50) NULL,
	[BartendersRequired] [varchar](50) NULL,
	[Custom1] [nvarchar](200) NULL,
	[Custom2] [nvarchar](200) NULL,
	[Custom3] [nvarchar](200) NULL,
	[Custom4] [nvarchar](200) NULL,
	[Custom5] [nvarchar](200) NULL,
	[CustomFact1] [nvarchar](200) NULL,
	[CustomFact2] [nvarchar](200) NULL,
	[ActualBarTab] [varchar](50) NULL,
	[ActualStaffCost] [varchar](50) NULL,
	[BartenderFeedback] NVARCHAR(250) NULL,
	[CustomerFeedback] NVARCHAR(250) NULL,
	[RecordTypeID] [varchar](50) NULL,
	[RecordType] [varchar](50) NULL,
	[Program] [varchar](60) NULL,
	[ProgramType] [varchar](50) NULL,
	[ProductGranularity] [varchar](50) NULL,
	[ProductName] [varchar](50) NULL,
	[MegacallGeocode] [varchar](50) NULL,
	[MegacallLongitude] [varchar](50) NULL,
	[MegacallLatitude] [varchar](50) NULL,
	[MegacallDistance] [varchar](50) NULL,
	[TxnDateID] [int] NULL,
	[StartDateID] [int] NULL,
	[FiscalDateID] [int] NULL,
	[CreateDateID] [int] NULL,
	[AccountCallSequenceStatusID]           VARCHAR(18)      NULL DEFAULT '-1',
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0'
	CONSTRAINT [PK_PromoEventFact] PRIMARY KEY ([ID]), 
    [GVWHash] VARCHAR(32) NOT NULL DEFAULT 0
);