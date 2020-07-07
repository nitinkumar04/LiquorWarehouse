CREATE TABLE [SFOut].[gvp__Division__c] (
    [Id]                   char (18)  NULL,
    [IsDeleted]            VARCHAR (10) NULL,
    [Name]                 NVARCHAR (100) NULL,
    [CreatedDate]          DATETIME NULL,
    [CreatedById]          char (18) NULL,
    [LastModifiedDate]     DATETIME NULL,
    [LastModifiedById]     char (18) NULL,
    [SystemModstamp]       DATETIME NULL,
    [LastActivityDate]     DATETIME NULL,
    [LastViewedDate]       DATETIME NULL,
    [LastReferencedDate]   DATETIME NULL,
    [gvp__Company__c]      char (18) NULL,
    [gvp__Division_Key__c] NVARCHAR (30) NOT NULL,
    [gvp__Custom_1__c]     NVARCHAR (200) NULL,
    [gvp__Custom_2__c]     NVARCHAR (200) NULL,
    [gvp__Custom_3__c]     NVARCHAR (200) NULL,
    [gvp__Custom_4__c]     NVARCHAR (200) NULL,
    [gvp__Custom_5__c]     NVARCHAR (200) NULL,
    [gvp__Is_Active__c]    VARCHAR (10) NULL, 
    CONSTRAINT [PK_gvp__Division__c] PRIMARY KEY ([gvp__Division_Key__c])
);

