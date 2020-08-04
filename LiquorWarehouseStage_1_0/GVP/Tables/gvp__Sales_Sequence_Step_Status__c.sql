CREATE TABLE [GVP].[gvp__Sales_Sequence_Step_Status__c](
	[Id] [char](18) NOT NULL,
	[IsDeleted] [nvarchar](10) NULL,
	[Name] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [char](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [char](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[gvp__Account_Call__c] [char](18) NULL,
	[gvp__Complete__c] [varchar](50) NULL,
	[gvp__Sales_Sequence_Step__c] [char](18) NULL,
	CONSTRAINT [PK_gvp__Sales_Sequence_Step_Status__c] PRIMARY KEY CLUSTERED ([Id] ASC)
	);