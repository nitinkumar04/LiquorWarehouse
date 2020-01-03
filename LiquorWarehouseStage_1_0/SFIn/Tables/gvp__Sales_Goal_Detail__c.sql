CREATE TABLE [SFIn].[gvp__Sales_Goal_Detail__c]
(
	[Id]                            char(18)      not null,
	IsDeleted                       varchar(10)   not null,
	Name                            nvarchar(100) not null,
	CreatedDate                     datetime      not null,
	CreatedById                     char(18)      not null,
	LastModifiedDate                datetime      not null,
	LastModifiedById                char(18)      not null,
	SystemModstamp                  datetime      not null,
  gvp__Sales_Goal__c              char(18)      not null,
  gvp__Related_Field_API_Name__c  varchar(100)  not null,
  gvp__Related_Field_Id__c        varchar(100)  not null,
  gvp__Reported_Result__c         decimal(14,2)  not null,
  gvp__Detail_Type__c             varchar(100)  not null, 
    CONSTRAINT [PK_gvp__Sales_Goal_Detail__c] PRIMARY KEY ([Id])
)
