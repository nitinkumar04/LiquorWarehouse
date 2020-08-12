﻿CREATE TABLE [GVP].[gvp__Account_Set__c]
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
	gvp__Account_HQ_Chain__c char(18) null,
	gvp__Account_Segment__c char(18) null,
	gvp__Active__c varchar(10) not null,
	gvp__Brand__c char(18) null,
	gvp__Channel__c nvarchar(200) null,
	gvp__Company__c char(18) null,
	gvp__Custom_1__c nvarchar(200) null,
	gvp__Custom_2__c nvarchar(200) null,
	gvp__Custom_3__c nvarchar(200) null,
	gvp__Custom_4__c nvarchar(200) null,
	gvp__Custom_5__c nvarchar(200) null,
	gvp__Description__c nvarchar(200) null,
	gvp__Distributor__c char(18) null,
	gvp__Division__c char(18) null,
	gvp__Expiration_Date__c date null,
	gvp__Item__c char(18) null,
	gvp__Label__c char(18) null,
	gvp__Last_Account_Update__c date null,
	gvp__Product_Set__c char(18) null,
	gvp__Program__c char(18) null,
	gvp__Region__c char(18) null,
	gvp__Territory__c char(18) null,
	gvp__Number_of_Accounts__c decimal(6,1) null,
	gvp__External_Id__c varchar(200) null,
	[OwnerId] CHAR(18) NULL,
    CONSTRAINT [PK_gvp__Account_Set__c] PRIMARY KEY ([Id])
    
)
