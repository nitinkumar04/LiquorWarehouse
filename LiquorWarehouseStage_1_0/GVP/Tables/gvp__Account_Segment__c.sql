CREATE TABLE [GVP].[gvp__Account_Segment__c]
(
  [Id] char(18) NOT NULL ,
	IsDeleted varchar(10) not null,
	Name nvarchar(100) not null,
	CreatedDate datetime not null,
	CreatedById char(18) null,
	LastModifiedDate datetime not null,
	LastModifiedById char(18) not null,
	SystemModstamp datetime not null,
	LastActivityDate date null,
	LastViewedDate datetime null,
	LastReferencedDate datetime null,
	gvp__Channel__c nvarchar(100) null,
	gvp__Segment_Code__c nvarchar(100) null,
	gvp__Account_Segment__c char(18) null,
	gvp__Type__c nvarchar(100) null, 
    CONSTRAINT [PK_gvp__Account_Segment__c] PRIMARY KEY ([Id])

)
