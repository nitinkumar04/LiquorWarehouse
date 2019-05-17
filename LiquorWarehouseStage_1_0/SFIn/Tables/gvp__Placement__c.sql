﻿CREATE TABLE [SFIn].[gvp__Placement__c]
(
  [Id] char(18) NOT NULL ,
	IsDeleted varchar(10) not null,
	Name nvarchar(100) not null,
  OwnerId char(18) null,
  RecordTypeId char(18) not null,
	CreatedDate datetime not null,
	CreatedById char(18) not null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	LastActivityDate date null,
	LastViewedDate datetime null,
	LastReferencedDate datetime null,
	gvp__Account__c char(18) null,	
  gvp__Authorization__c char(18) null,
	gvp__Compliance__c nvarchar(100) null,
	gvp__Custom_1__c nvarchar(200) null,
	gvp__Custom_2__c nvarchar(200) null,
	gvp__Custom_3__c nvarchar(200) null,
	gvp__Details__c nvarchar(500) null,
	gvp__Drink_Name__c nvarchar(200) null,
	gvp__End_Date__c date not null,
	gvp__New_Or_Not__c nvarchar(100) null,
	gvp__POS_Placement__c char(18) null,
	gvp__Placement_Name__c nvarchar(100) null,
	gvp__Placement_Price__c money null,
	gvp__Start_Date__c date not null,
	gvp__Cases_on_Display__c decimal(5,1) null,
	gvp__Display_Location__c nvarchar(100) null,
	gvp__Scan_Amount__c money null,
	gvp__Custom_Fact_1__c decimal(12,8) null,
	gvp__Custom_Fact_2__c decimal(12,8) null,
	gvp__External_Id__c char(50) null,
	gvp__POS_Material__c char(18) null,
	gvp__Custom_Checkbox_1__c nvarchar(100) null,
	gvp__Custom_Checkbox_2__c nvarchar(100) null,
	gvp__Custom_Text_1__c nvarchar(200) null,
	gvp__Custom_Text_2__c nvarchar(200) null,
	gvp__Program__c char(18) null, 
    CONSTRAINT [PK_gvp__Placement__c] PRIMARY KEY ([Id])
)
