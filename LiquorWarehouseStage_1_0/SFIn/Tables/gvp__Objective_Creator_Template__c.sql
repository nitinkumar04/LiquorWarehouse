CREATE TABLE [SFIn].[gvp__Objective_Creator_Template__c] (
    [Id]                         char (18)  NOT NULL,
    [OwnerId]                    char (18)  NULL,
    [IsDeleted]                  VARCHAR (10)  NULL,
    [Name]                       NVARCHAR (100) NULL,
    [CreatedDate]                DATETIME      NULL,
    [CreatedById]                char (18)  NULL,
    [LastModifiedDate]           DATETIME      NULL,
    [LastModifiedById]           char (18)  NULL,
    [SystemModstamp]             DATETIME      NULL,
    [LastViewedDate]             DATETIME      NULL,
    [LastReferencedDate]         DATETIME      NULL,
    [gvp__Master_Objective__c]   char (18)  NULL,
    [gvp__Import_Type__c]        VARCHAR (20)  NULL,
    [gvp__Objective__c]          char (18)  NULL,
    [gvp__Accomplish_By_Date__c] DATE          NULL,
    [gvp__Assigned_Date__c]      DATE          NULL,
    [gvp__Description__c]        NVARCHAR (200) NULL,
    [gvp__Territory__c]          char (18)  NULL,
    CONSTRAINT [PK_gvp__Objective_Creator_Template__c] PRIMARY KEY CLUSTERED ([Id] ASC)
);

