CREATE TABLE [SFIn].[gvp__Sales_Sequence__c](
	[Id] [char](18) NOT NULL,
	[IsDeleted] [varchar](10) NULL,
	[Name] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [char](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [char](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastViewedDate] [datetime] NULL,
	[LastReferencedDate] [datetime] NULL,
	[gvp__Account_Record_Type__c] [char](30) NULL,
	[gvp__Active__c] [varchar](10) NULL,
	[gvp__Enforce_Order__c] [varchar](10) NULL,
	[gvp__Geography_Key__c] [varchar](50) NULL,
	[gvp__User_Profile__c] [nvarchar](100) NULL,
	[gvp__Account_Segment__c] [varchar](100) NULL,
	[OwnerId] [char](18) NULL,
	CONSTRAINT [PK_gvp__Sales_Sequence__c] PRIMARY KEY CLUSTERED ([Id] ASC)
	);