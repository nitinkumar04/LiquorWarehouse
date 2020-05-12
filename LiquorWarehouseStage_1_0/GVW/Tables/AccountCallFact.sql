﻿CREATE TABLE [GVW].[AccountCallFact](
    [ID]           VARCHAR(18)      NOT NULL,
	[URL]          [varchar](250)  NULL,
	[Name]         [varchar](250)  NULL,
	[CreatedDate]                   [char](10)      NULL,
	[ModifiedDate]                  [char](10)      NULL,
	[TxnDate]                       [char](10)      NULL,
	[TxnAltDate]                   [char](10)      NULL,
	[FiscalDate]                    [char](10)      NULL,
	[FiscalMonth]                   [char](2)       NULL,
	[FiscalYear]                    [char](4)       NULL,
	[FiscalDateDimID]             Char(10)      NULL,
	[AccountDimID]                 VARCHAR(18)      NOT NULL DEFAULT '-1',
	[ContactDimID]                 VARCHAR(18)      NULL DEFAULT '-1',
	[PersonDimID]                  VARCHAR(18)      NULL DEFAULT '-1',
	[ActivityGoalDimID]           VARCHAR(18)      NULL DEFAULT '-1',
	[GeographyDimID]               VARCHAR(18)      NULL DEFAULT '-1',
	[ProductDimID]                 VARCHAR(18)      NULL DEFAULT '-1',
	[TransactionTypeID]            VARCHAR(18)      NULL DEFAULT '-1',
	[Notes]             [nvarchar](300) NULL,
	[Status]            [varchar](50)   NULL,
	[Type]              [varchar](200)  NULL,
	[ExternalID]               [varchar](200)  NULL,
	[Longitude]         [varchar](100)  NULL,
	[Latitude]          [varchar](100)  NULL,
	[Distance]          [varchar](50)   NULL,
	[Geocode]           [varchar](100)  NULL,
	[Date]              [char](10)      NULL,
	[Time]              [varchar](10)   NULL,
	[CallDuration] VARCHAR(50) NULL, 
	[Custom1]          [varchar](255)  NULL,
	[Custom2]          [varchar](255)  NULL,
	[Custom3]          [varchar](255)  NULL,
	[Custom4]          [varchar](255)  NULL,
    [Custom5]          [varchar](255)  NULL,
	[CustomCheckbox1] [varchar](200)  NULL,
	[CustomCheckbox2] [varchar](200)  NULL,
	[CustomCheckbox3] [varchar](200)  NULL,
	[CustomFact1]     [varchar](20)   NULL,
	[CustomFact2]     [varchar](20)   NULL,
	[Priority]          [varchar](100)  NULL,
	[Subject]           [varchar](100)  NULL,
	[Description]       [nvarchar](3000) NULL,
	[TaskID]                        VARCHAR(18)   NULL,
	[TaskURL]                       [varchar](250)  NULL,
	[TaskStatus]                    [varchar](50)   NULL,
	[TaskType]                      [varchar](50)   NULL,
	[TaskCallType]                 [varchar](200)  NULL,
	[LocalDate]        [char]   (10)   NULL,
	[AccountTeamDimID]            VARCHAR(18)   NULL DEFAULT '-1',
	[SalesDivisionDimID]          VARCHAR(18)   NULL DEFAULT '-1',
	[TxnDateID]                    [varchar](10)   NULL,
	[TxnAltDateID]                [varchar](10)   NULL,
	[CreateDateID]                 [varchar](10)   NULL,
	[FiscalDateID]                 [varchar](10)   NULL,
	[ImageID]                       VARCHAR(18)   NULL,
	[ImageName]                     [varchar](200)  NULL,
	[ImageURL]                      [varchar](250)  NULL,
	[ImageInd]                      [varchar](10)   NULL,
	[ImageDescription]              [varchar](300)  NULL,
	[ImageURLDashboard]            [varchar](250)  NULL,
	[ImageURLTable]                [varchar](200)  NULL,
	[SpendDimID]                   VARCHAR(18)      NULL DEFAULT '-1', 
	[StartDate] DATE NULL, 
    [EndDate] DATE NULL, 
    [AccountCallEndTime] TIME NULL, 
    [AccountCallEndDate] DATE NULL, 
    [VisitSequenceStatusID] VARCHAR(18) NULL DEFAULT '-1', 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0',
	[GVWHash] VARCHAR(32) NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_AccountCallFact] PRIMARY KEY ([AccountDimID], [ID])
);