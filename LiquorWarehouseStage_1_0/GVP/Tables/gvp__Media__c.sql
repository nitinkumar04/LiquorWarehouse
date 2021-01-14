CREATE TABLE [GVP].[gvp__Media__c]
(
  [Id] char(18) NOT NULL, 
	IsDeleted varchar(10) not null,
	Name nvarchar(100) not null,
	RecordTypeId char(18) null,
	CreatedDate datetime not null,
	CreatedById char(18) not null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	LastViewedDate datetime null,
	LastReferencedDate datetime null,
	gvp__Account__c char(18) NOT null,
	gvp__Brand__c char(18) null,
	gvp__Comments__c nvarchar(300) null,
	gvp__Competitor__c char(18) null,
	gvp__Date_Time__c datetime null,
	gvp__External_Id__c varchar(20) null,
	gvp__Label__c char(18) null,
	gvp__Location__c nvarchar(100) null,
	gvp__Type__c nvarchar(100) null,
	gvp__Geolocation__Latitude__s decimal(21,18) null,
	gvp__Geolocation__Longitude__s decimal(21,18) null,
	gvp__Heading__c decimal(4,1) null,
	gvp__Distance_m__c decimal(9,1) null,
	gvp__Attachments__c decimal(4,1) null,
	gvp__Attachment_Id__c char(18) null,
	gvp__Sticky__c varchar(10) null,
	gvp__Survey_Answer__c char(18) null,
	gvp__Account_Call__c char(18) null
    CONSTRAINT [PK_gvp__Media__c] PRIMARY KEY ([Id]) 
)

