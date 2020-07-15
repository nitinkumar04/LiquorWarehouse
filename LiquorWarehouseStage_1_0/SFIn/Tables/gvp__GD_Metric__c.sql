CREATE TABLE [SFIn].[gvp__GD_Metric__c]
(
	Id					char(18)		NOT NULL ,
	IsDeleted			varchar(10)		NOT NULL,
	Name				VARCHAR(100)	NULL,
	SetupOwnerId		char(18)		NOT NULL,
	CreatedDate			datetime		NOT NULL,
	CreatedById			char(18)		NOT NULL,
	LastModifiedDate	datetime		NOT NULL,
	LastModifiedById	char(18)		NOT NULL,
	SystemModstamp		datetime		NOT NULL,
	gvp__Name__c		VARCHAR(100)	NULL,
	gvp__Sort__c		VARCHAR(30)		NULL,
	gvp__fact__c		VARCHAR(14)		NULL,
	gvp__id__c			VARCHAR(30)		NOT NULL,
    CONSTRAINT [PK_gvp__GD_Metric__c] PRIMARY KEY ([Id])
)