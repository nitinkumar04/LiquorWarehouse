CREATE TABLE [SFOut].[gvp__Company__c] (
    [Id]                  char (18)  NULL,
    [OwnerId]             char (18) NULL,
    [IsDeleted]           VARCHAR (10) NULL,
    [Name]                NVARCHAR (100) NULL,
    [CreatedDate]         datetime NULL,
    [CreatedById]         VARCHAR (200) NULL,
    [LastModifiedDate]    datetime NULL,
    [LastModifiedById]    VARCHAR (200) NULL,
    [SystemModstamp]      DATETIME NULL,
    [LastViewedDate]      DATETIME NULL,
    [LastReferencedDate]  DATETIME NULL,
    [gvp__Company_Key__c] NVARCHAR (50) NOT NULL,
    [gvp__Custom_1__c]    NVARCHAR (200) NULL,
    [gvp__Custom_2__c]    NVARCHAR (200) NULL,
    [gvp__Is_Active__c]   VARCHAR (10) NULL, 
    CONSTRAINT [PK_gvp__Company__c] PRIMARY KEY ([gvp__Company_Key__c])
);

