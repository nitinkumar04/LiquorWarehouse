﻿CREATE TABLE [GVW].[Account_Call_Fact](
	[Account Call Fact Id]           VARCHAR(18)      NOT NULL,
	[Account Call Fact URL]          [varchar](250)  NULL,
	[Account Call Fact Name]         [varchar](250)  NULL,
	[Created Date]                   [char](10)      NULL,
	[Modified Date]                  [char](10)      NULL,
	[Txn Date]                       [char](10)      NULL,
	[Txn Alt Date]                   [char](10)      NULL,
	[Create Date]                    [char](10)      NULL,
	[Fiscal Date]                    [char](10)      NULL,
	[Fiscal Month]                   [char](2)       NULL,
	[Fiscal Year]                    [char](4)       NULL,
	[Fiscal Date Dim Id]             [char](10)      NULL,
	[Account Dim Id]                 VARCHAR(18)      NULL DEFAULT '-1',
	[Acct Univ Dim Id]               VARCHAR(18)      NULL DEFAULT '-1',
	[Contact Dim Id]                 VARCHAR(18)      NULL DEFAULT '-1',
	[Person Dim Id]                  VARCHAR(18)      NULL DEFAULT '-1',
	[Activity Goal Dim Id]           VARCHAR(18)      NULL DEFAULT '-1',
	[Geography Dim Id]               VARCHAR(18)      NULL DEFAULT '-1',
	[Product Dim Id]                 VARCHAR(18)      NULL DEFAULT '-1',
	[Transaction Type Id]            VARCHAR(18)      NULL DEFAULT '-1',
	[Account Call Id]                VARCHAR(18)      NULL,
	[Account Call URL]               [varchar](250)  NULL,
	[Account Call Name]              [varchar](100)  NULL,
	[Account Call Notes]             [nvarchar](300) NULL,
	[Account Call Status]            [varchar](50)   NULL,
	[Account Call Type]              [varchar](200)  NULL,
	[Account Call Key]               [varchar](200)  NULL,
	[Account Call Longitude]         [varchar](100)  NULL,
	[Account Call Latitude]          [varchar](100)  NULL,
	[Account Call Distance]          [varchar](50)   NULL,
	[Account Call Geocode]           [varchar](100)  NULL,
	[Account Call Date]              [char](10)      NULL,
	[Account Call Time]              [varchar](10)   NULL,
	[Account Call Custom 1]          [varchar](255)  NULL,
	[Account Call Custom 2]          [varchar](255)  NULL,
	[Account Call Custom 3]          [varchar](255)  NULL,
	[Account Call Custom 4]          [varchar](255)  NULL,
    [Account Call Custom 5]          [varchar](255)  NULL,
	[Account Call Custom Checkbox 1] [varchar](200)  NULL,
	[Account Call Custom Checkbox 2] [varchar](200)  NULL,
	[Account Call Custom Checkbox 3] [varchar](200)  NULL,
	[Account Call Custom Fact 1]     [varchar](20)   NULL,
	[Account Call Custom Fact 2]     [varchar](20)   NULL,
	[Account Call Priority]          [varchar](100)  NULL,
	[Account Call Subject]           [varchar](100)  NULL,
	[Account Call Description]       [nvarchar](3000) NULL,
	[Task Id]                        VARCHAR(18)   NULL,
	[Task URL]                       [varchar](250)  NULL,
	[Task Status]                    [varchar](50)   NULL,
	[Task Type]                      [varchar](50)   NULL,
	[Task Call Type]                 [varchar](200)  NULL,
	[Account Call Local Date]        [char]   (10)   NULL,
	[Account Team Dim Id]            VARCHAR(18)   NULL DEFAULT '-1',
	[Sales Division Dim Id]          VARCHAR(18)   NULL DEFAULT '-1',
	[Txn_Date_Id]                    [varchar](10)   NULL,
	[Txn_Alt_Date_Id]                [varchar](10)   NULL,
	[Create_Date_Id]                 [varchar](10)   NULL,
	[Fiscal_Date_Id]                 [varchar](10)   NULL,
	[Image_Id]                       VARCHAR(18)   NULL,
	[Image_Name]                     [varchar](200)  NULL,
	[Image_URL]                      [varchar](250)  NULL,
	[Image_Ind]                      [varchar](10)   NULL,
	[Image_Description]              [varchar](300)  NULL,
	[Image_URL_Dashboard]            [varchar](250)  NULL,
	[Image_URL_Table]                [varchar](200)  NULL,
	[Spend Dim Id]                   VARCHAR(18)      NULL DEFAULT '-1', 
    CONSTRAINT [PK_Account_Call_Fact] PRIMARY KEY ([Account Call Fact Id])
) ON [PRIMARY]
GO

