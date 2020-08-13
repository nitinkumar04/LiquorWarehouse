CREATE TABLE [GVP].[gvp__GD_Filter_List__c]
(
	Id					char(18)		NOT NULL ,
	IsDeleted			VARCHAR(10)		NOT NULL,
	Name				VARCHAR(100)	NULL,
	SetupOwnerId		char(18)		NOT NULL,
	CreatedDate			datetime		NOT NULL,
	CreatedById			char(18)		NOT NULL,
	LastModifiedDate	datetime		NOT NULL,
	LastModifiedById	char(18)		NOT NULL,
	SystemModstamp		datetime		NOT NULL,
	gvp__Name__c		VARCHAR(100)	NULL,
	gvp__description__c VARCHAR(1020)	NULL,
	gvp__fact__c		VARCHAR(14)		NULL,
	gvp__group__c		VARCHAR(100)	NULL,
	gvp__id__c			VARCHAR(30)		NOT NULL,
	gvp__package__c		VARCHAR(30)		NULL,
	gvp__sort__c		VARCHAR(30)		NULL,
    CONSTRAINT [PK_gvp__GD_Filter_List__c] PRIMARY KEY ([Id])
)