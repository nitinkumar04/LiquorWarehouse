CREATE TABLE [SFIn].[gvp__Account_Set_Member__c]
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
	gvp__Account_Set__c char(18) not null,
	gvp__Account__c char(18) not null,
	gvp__External_Id__c varchar(20) null
    CONSTRAINT [PK_gvp__Account_Set_Member__c] PRIMARY KEY ([Id]) 
)
