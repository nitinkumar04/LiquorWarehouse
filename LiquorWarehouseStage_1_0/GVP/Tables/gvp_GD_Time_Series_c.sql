CREATE TABLE [GVP].[gvp__GD_Time_Series__c]
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
	gvp__Id__c			VARCHAR(30)		NOT NULL,
	gvp__Sort__c		VARCHAR(30)		NULL,
	gvp__fact__c		VARCHAR(14)		NULL,
	gvp__name__c		VARCHAR(100)	NULL,
	CONSTRAINT [PK_gvp__GD_Time_Series__c] PRIMARY KEY ([Id])
)