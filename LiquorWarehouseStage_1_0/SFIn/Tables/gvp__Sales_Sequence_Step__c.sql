CREATE TABLE [SFIn].[gvp__Sales_Sequence_Step__c](
	[Id] [char](18) NOT NULL,
	[IsDeleted] [varchar](10) NULL,
	[Name] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [char](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [char](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[gvp__Sales_Sequence__c] [char](18) NULL,
	[gvp__Order_Number__c] [decimal](4, 1) NULL,
    [gvp__Required__c] [varchar] (10) NULL,
	[gvp__Subtype__c] [varchar](30) NULL,
	[gvp__Type__c] [varchar](50) NULL,
	CONSTRAINT [PK_gvp__Sales_Sequence_Step__c] PRIMARY KEY CLUSTERED ([Id] ASC)
	);