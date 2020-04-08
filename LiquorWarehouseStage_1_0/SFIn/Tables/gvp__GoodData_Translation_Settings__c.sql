CREATE TABLE [SFIn].[gvp__GoodData_Translation_Settings__c](
    [Id]                 CHAR (18)  NOT NULL,
	[IsDeleted]          VARCHAR (10)  NOT NULL,
    [Name]               NVARCHAR (50) NOT NULL,
	[SetupOwnerId]		 CHAR (18) NULL,
    [CreatedDate]        DATETIME     NOT NULL,
    [CreatedById]        CHAR (18)  NOT NULL,
    [LastModifiedDate]   DATETIME     NOT NULL,
    [LastModifiedById]   CHAR (18) NOT NULL,
    [SystemModstamp]     DATETIME     NOT NULL,
    [gvp__GoodData_Group__c]     NVARCHAR  (50)   NULL,
    [gvp__GoodData_Label__c]     NVARCHAR (50)    NULL,
	[gvp__GoodData_Order__c]     VARCHAR(10)    NULL,
	[gvp__GoodData_Plural__c]     NVARCHAR  (50)   NULL,
	[gvp__GoodData_Subgroup__c]     NVARCHAR (50)    NULL,
	[gvp__Salesforce_Object__c]     NVARCHAR  (50)   NULL,
    CONSTRAINT [PK_GoodData_Translation_Settings__c] PRIMARY KEY CLUSTERED ([Id] ASC)
	)