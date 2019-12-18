CREATE TABLE [SFIn].[gvp__Expense_Line_Item_Association__c]
(
    [Id] char(18) NOT NULL, 
	OwnerId char(18) not null,
	IsDeleted varchar(10) not null,
	Name nvarchar(100) not null,
	CreatedDate datetime not null,
	CreatedById char(18) not null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	gvp__Invoice_Amount__c money null,
	gvp__Invoice_Line_Item__c char(18) null,
	gvp__Planned_Spend_Expense__c char(18) null
    CONSTRAINT [PK_gvp__Expense_Line_Item_Association__c] PRIMARY KEY ([Id]) 
)

