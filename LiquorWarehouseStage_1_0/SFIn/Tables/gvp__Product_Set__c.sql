CREATE TABLE [SFIn].[gvp__Product_Set__c] (
    [Id]                      char (18)  NOT NULL,
    [OwnerId]                 char (18)  NULL,
    [IsDeleted]               VARCHAR (10)  NULL,
    [Name]                    NVARCHAR (200) NULL,
    [CreatedDate]             DATETIME      NULL,
    [CreatedById]             char (18)  NULL,
    [LastModifiedDate]          DATETIME      NULL,
    [LastModifiedById]          char (18)  NULL,
    [SystemModstamp]          DATETIME      NULL,
    [LastViewedDate]            DATETIME      NULL,
    [LastReferencedDate]        DATETIME      NULL,
    [gvp__Show_on_Surveys__c] VARCHAR (10)  NULL,
    [gvp__Division__c]        char (18)  NULL,
    [gvp__External_Id__c]     VARCHAR (200) NULL,
    [gvp__Region__c]          char (18)  NULL,
    [gvp__Territory__c]       char (18)  NULL,
    CONSTRAINT [PK_gvp__Product_Set__c] PRIMARY KEY CLUSTERED ([Id] ASC)
);

