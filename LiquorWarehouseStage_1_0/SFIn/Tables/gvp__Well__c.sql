CREATE TABLE [SFIn].[gvp__Well__c](
	[Id] CHAR(18) NOT NULL,
	[IsDeleted] [varchar](10) NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] CHAR(18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] CHAR(18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [date] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[gvp__Account__c] CHAR(18) NULL,
	[gvp__Account_Call__c] CHAR(18) NULL,
	[gvp__Activity_Goal__c] CHAR(18) NULL,
	[gvp__End_Date__c] [date] NULL,
	[gvp__Is_Current__c] VARCHAR(10) NULL,
	[gvp__Label__c] CHAR(18) NULL,
	[gvp__Start_Date__c] [date] NULL,
	[gvp__Item__c] CHAR(18) NULL,
	[gvp__Account_KPI__c] CHAR(18) NULL,
	[gvp__Compliance__c] NVARCHAR(50) NULL,
	[gvp__Price__c] [money] NULL,
	[gvp__Program__c] CHAR(18) NULL,
	[gvp__Brand__c] CHAR(18) NULL,
	[gvp__Custom_1__c] NVARCHAR(100) NULL,
	[gvp__Custom_2__c] NVARCHAR(100) NULL,
	[gvp__Custom_3__c] NVARCHAR(100) NULL,
	[gvp__Custom_4__c] NVARCHAR(100) NULL,
	[gvp__Custom_5__c] NVARCHAR(100) NULL,
	[gvp__Custom_Fact_1__c] [decimal](13, 8) NULL,
	[gvp__Custom_Fact_2__c] [decimal](13, 8) NULL,
	[gvp__External_Id__c] NVARCHAR(50) NULL,
	[gvp__Account_Call_Send_Email_Date__c] [date] NULL,
	[gvp__Account_Call_Send_Email__c] VARCHAR(10) NULL,
	[gvp__Account_Call_Status__c] NVARCHAR(30) NULL,
 CONSTRAINT [PK_gvp__Well__c] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

