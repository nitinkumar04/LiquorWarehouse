CREATE TABLE [SFIN].[gvp__Analytics_Field__c]
(
	Id CHAR(18) NOT NULL PRIMARY KEY, 
	IsDeleted varchar(10) not null,
	Name VARCHAR(100) not null,
	CreatedDate datetime NOT null,
	CreatedById char(18) NOT null,
	LastModifiedDate datetime NOT null,
	LastModifiedById char(18) NOT null,
	SystemModstamp datetime null,
	LastViewedDate datetime null,
	LastReferencedDate datetime null,
    gvp__Analytics_Folder__c VARCHAR(100) NULL, 
    gvp__Field_Identifier__c VARCHAR(100) NULL, 
    gvp__Goal_Type__c VARCHAR(100) NULL, 
    gvp__Object_Id__c VARCHAR(100) NULL, 
    gvp__Quantity_Type__c VARCHAR(100) NULL, 
    gvp__Type__c VARCHAR(100) NULL, 
    gvp__Valid_Result_Report_Metric__c VARCHAR(100) NULL
)
