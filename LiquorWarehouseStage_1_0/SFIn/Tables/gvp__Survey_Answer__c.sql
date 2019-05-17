﻿CREATE TABLE [SFIn].[gvp__Survey_Answer__c]
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
	gvp__Answer_Check__c varchar(10) null,
	gvp__Answer_Currency__c money null,
	gvp__Answer_Number__c decimal(15,8) null,
	gvp__Answer_Percent__c decimal(4,1) null,
	gvp__Answer_Text__c nvarchar(300) null,
	gvp__Order__c decimal(8,1) null,
	gvp__Question__c char(18) null,
	gvp__Survey__c char(18) null,
	gvp__Answer_Saved__c varchar(10) null,
	gvp__Question_Text_Sort__c nvarchar(255) null,
	gvp__Points__c decimal(4,1) null,
	gvp__Account__c nvarchar(200) null,
	gvp__Most_Recent__c varchar(10) null,
	gvp__Matching_Target_Points__c decimal(4,1) null,
	gvp__External_Id__c varchar(20) null,
	gvp__Status__c nvarchar(100) null,
	gvp__Answer_Formula__c varchar(250) null,
	gvp__Custom_Currency_1__c money null,
	gvp__Custom_Fact_1__c decimal(12,8) null,
	gvp__Custom_Fact_2__c decimal(12,8) null,
	gvp__Custom_Fact_3__c decimal(12,8) null,
	gvp__Custom_Fact_4__c decimal(12,8) null,
	gvp__Custom_Fact_5__c decimal(12,8) null,
	gvp__Custom_Text_1__c nvarchar(200) null,
	gvp__Custom_Text_2__c nvarchar(200) null,
	gvp__Custom_Text_3__c nvarchar(200) null,
	gvp__Custom_Text_4__c nvarchar(200) null,
	gvp__Custom_Text_5__c nvarchar(200) null,
	gvp__Audited_Survey_Answer__c char(18) null,
	gvp__Attachments__c decimal(4,1) null,
	gvp__Answer_Brand__c char(18) null,
	gvp__Answer_Competitor__c char(18) null,
	gvp__Answer_Item__c char(18) null,
	gvp__Answer_Label__c char(18) null,
	gvp__Answer_Multiple__c nvarchar(200) null,
	gvp__Answer_Product_Set__c char(18) null,
	gvp__Answer_Program__c char(18) null,
	gvp__Answer_Size__c char(18) null,
	gvp__Is_Answered__c varchar(10) null,
	gvp__Matching_Target_Points_Auxiliary__c decimal(4,1) null,
	gvp__Met_Target__c varchar(10) not null
    CONSTRAINT [PK_gvp__Survey_Answer__c] PRIMARY KEY ([Id]) 
)
