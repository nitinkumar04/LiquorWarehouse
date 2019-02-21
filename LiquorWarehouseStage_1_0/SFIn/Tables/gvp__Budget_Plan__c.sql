﻿CREATE TABLE [SFIn].[gvp__Budget_Plan__c]
(
  [Id] char(18) NOT NULL, 
	IsDeleted varchar(10) not null,
	Name nvarchar(100) not null,
	CreatedDate datetime not null,
	CreatedById char(18) not null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	LastActivityDate date null,
	LastViewedDate datetime null,
	LastReferencedDate datetime null,
	gvp__Parent_Budget__c char(18) null,
	gvp__Amount__c money null,
	gvp__Brand__c nvarchar(100) null,
	gvp__Budget_Remaining__c money null,
	gvp__Division__c char(18) null,
	gvp__Plan_Manager__c char(18) null,
	gvp__Region__c char(18) null,
	gvp__Territory__c char(18) null,
	gvp__Total_Program_Cost__c money null,
	gvp__Amount_Actual__c money null,
	gvp__Amount_Committed__c money null,
	gvp__Forecast_Budget_Remaining__c money null,
	gvp__Total_Spend_Forecast__c money null,
	gvp__Total_Program_Budget__c money null,
	gvp__Company__c char(18) null,
	gvp__Budget_Plan_Key__c nvarchar(100) null,
	gvp__Brand_lookup__c char(18) null,
	gvp__Account__c char(18) null,
	gvp__Amount_Planned__c money null,
	gvp__End_Date__c date null,
	gvp__Start_Date__c date null,
	gvp__Brand_Key__c varchar(20) null,
	gvp__Cost_Center__c nvarchar(100) null,
	gvp__Custom_Currency_1__c money null,
	gvp__Custom_Currency_2__c money null,
	gvp__Custom_Date_1__c date null,
	gvp__Custom_Date_2__c date null,
	gvp__Custom_Number_1__c decimal(18,8) null,
	gvp__Custom_Number_2__c decimal(18,8) null,
	gvp__Custom_Picklist_1__c nvarchar(200) null,
	gvp__Custom_Picklist_2__c nvarchar(200) null,
	gvp__Custom_Text_1__c nvarchar(200) null,
	gvp__Custom_Text_2__c nvarchar(200) null,
	gvp__Custom_Text_3__c nvarchar(200) null,
	gvp__Custom_Text_4__c nvarchar(200) null,
	gvp__Custom_Text_5__c nvarchar(200) null,
  gvp__Spend_Type__c nvarchar(100) null,
    CONSTRAINT [PK_gvp__Budget_Plan__c] PRIMARY KEY ([Id]) 
)
