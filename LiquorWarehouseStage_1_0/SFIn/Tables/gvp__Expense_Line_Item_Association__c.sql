CREATE TABLE [SFIn].[gvp__Expense_Line_Item_Association__c](
	[Id] [char](18) NOT NULL,
	[OwnerId] [char](18) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [char](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [char](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[gvp__Invoice_Amount__c] [money] NOT NULL,
	[gvp__Invoice_Line_Item__c] [char](18) NULL,
	[gvp__Planned_Spend_Expense__c] [char](18) NULL,
 CONSTRAINT [PK_gvp__Expense_Line_Item_Association__c] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]