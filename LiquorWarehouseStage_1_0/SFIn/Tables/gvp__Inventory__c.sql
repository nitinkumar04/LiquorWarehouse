CREATE TABLE [SFIn].[gvp__Inventory__c]
(
  [Id] char(18) NOT NULL, 
	IsDeleted varchar(10) not null,
	Name nvarchar(100) not null,
	CreatedDate datetime not null,
	CreatedById char(18) not null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	LastViewedDate datetime null,
	LastReferencedDate datetime null,
	gvp__Location__c nvarchar(100) null,
	gvp__Quantity__c decimal(14,4) null,
	gvp__Date_of_Data__c date null,
	gvp__Item_Number__c varchar(20) null,
	gvp__Warehouse__c varchar(20) null,
	gvp__Inventory_Item_Key__c varchar(100) null,
	gvp__Quantity_On_Hand__c decimal(8,2) null,
	gvp__Quantity_On_Order__c decimal(8,2) null,
	gvp__Item_Lookup__c char(18) null
    CONSTRAINT [PK_gvp__Inventory__c] PRIMARY KEY ([Id]) 
)
