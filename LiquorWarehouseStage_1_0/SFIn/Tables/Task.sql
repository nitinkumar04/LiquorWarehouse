CREATE TABLE [SFIn].[Task]
(
	[Id] char(18) NOT NULL ,
	WhoId char(18) null,
	WhatId char(18) null,
	Subject nvarchar(255) null,
	ActivityDate date null,
	Status nvarchar(50) null,
	Priority nvarchar(20) null,
	IsHighPriority varchar(10) null,
	OwnerId char(18) null,
	Description nvarchar(1500) null,
	Type nvarchar(25) null,
	IsDeleted varchar(10) null,
	AccountId char(18) null,
	IsClosed varchar(10) null,
	CreatedDate datetime not null,
	CreatedById char(18) not null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	IsArchived varchar(10) null,
	IsVisibleInSelfService varchar(10) null,
	CallDurationInSeconds int null,
	CallType nvarchar(200) null,
	CallDisposition nvarchar(200) null,
	CallObject nvarchar(100) null,
	ReminderDateTime datetime null,
	IsReminderSet varchar(10) null,
	RecurrenceActivityId char(18) null,
	IsRecurrence varchar(10) null,
	RecurrenceStartDateOnly date null,
	RecurrenceEndDateOnly date null,
	RecurrenceTimeZoneSidKey nvarchar(100) null,
	RecurrenceType nvarchar(100) null,
	RecurrenceInterval int null,
	RecurrenceDayOfWeekMask int null,
	RecurrenceDayOfMonth int null,
	RecurrenceInstance nvarchar(100) null,
	RecurrenceMonthOfYear NVARCHAR(20) null,
	RecurrenceRegeneratedType nvarchar(100) null,
	TaskSubtype nvarchar(200) null,
	gvp__Account_Call__c varchar(10) null,
	gvp__Account_Call_Id__c char(18) null,
	gvp__Event_is_Past__c varchar(10) null,
	gvp__External_Id__c varchar(20) null,
	gvp__Approved__c varchar(10) null,
	gvp__Account_Call_Send_Email_Date__c date null,
	gvp__Account_Call_Send_Email__c varchar(10) null,
	gvp__Account_Call_Status__c nvarchar(50) null,
	gvp__Box_URL__c nvarchar(100) null,
	gvp__Related_Account_Call__c char(18) null, 
    CONSTRAINT [PK_Task] PRIMARY KEY ([Id])

)
