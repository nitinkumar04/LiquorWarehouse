CREATE TABLE ERPOut.SAPInvoice
(
	Expense_Id             char(18) not null, 
	GVInvNum               varchar(255) null,
	CostCenter             varchar(255) null,
	Curr                   varchar(10)  null,
	GLAcct                 varchar(255) null,
	InvDescription         varchar(255) null,
	InvoiceDate            varchar(50)  null,
	LineItemAmount         varchar(50)  null,
	VendorID               varchar(255) null,
	VendorInvNum           varchar(255) null,
	gvp__Invoice__c        char(18)     null,
	gvp__Status__c         varchar(50)  null,
	gvp__Expense_Code__c   varchar(255) null,
	ItemStatus__c          varchar(255) null,
	gvp__Invoice_Number__c varchar(255) null,
	CompanyCode            varchar(255) null,
	CONSTRAINT [PK_SAPInvoice] PRIMARY KEY ([Expense_Id])
)