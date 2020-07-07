CREATE TABLE [GVP].[gvp__Region__c] (
    [Id]                 char (18)  NOT NULL,
    [IsDeleted]          VARCHAR (200) NULL,
    [Name]               NVARCHAR (100) NULL,
    [CreatedDate]        DATETIME NULL,
    [CreatedById]        char (18) NULL,
    [LastModifiedDate]   DATETIME NULL,
    [LastModifiedById]   char (18) NULL,
    [SystemModstamp]     DATETIME NULL,
    [LastActivityDate]   DATETIME NULL,
    [LastViewedDate]     DATETIME NULL,
    [LastReferencedDate] DATETIME NULL,
    [gvp__Division__c]   char (18) NULL,
    [gvp__Region_Key__c] NVARCHAR(50) NULL,
    [gvp__Custom_1__c]   NVARCHAR (200) NULL,
    [gvp__Custom_2__c]   NVARCHAR (200) NULL,
    [gvp__Is_Active__c]  VARCHAR (10) NULL, 
    CONSTRAINT [PK_gvp__Region__c] PRIMARY KEY ([Id])
);

