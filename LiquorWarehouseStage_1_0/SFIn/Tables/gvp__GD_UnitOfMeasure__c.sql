CREATE TABLE [SFIn].[gvp__GD_UnitOfMeasure__c]
(
	Id						char(18)		NOT NULL ,
	IsDeleted				varchar(10)		NOT NULL,
	Name					VARCHAR(100)	NULL,
	SetupOwnerId			char(18)		NOT NULL,
	CreatedDate				datetime		NOT NULL,
	CreatedById				char(18)		NOT NULL,
	LastModifiedDate		datetime		NOT NULL,
	LastModifiedById		char(18)		NOT NULL,
	SystemModstamp			datetime		NOT NULL,
	gvp__a_uom_dim_name__c	VARCHAR(100)	NULL,
	gvp__cp_uom_dim_id__c	VARCHAR(30)		NOT NULL,
	gvp__f_uom_dim_fact__c	VARCHAR(14)		NULL,
	gvp__l_uom_dim_name_unit_of_measure_dim_sort__c		VARCHAR(30)	 NULL,
	CONSTRAINT [PK_gvp__GD_UnitOfMeasure__c] PRIMARY KEY ([Id])
)