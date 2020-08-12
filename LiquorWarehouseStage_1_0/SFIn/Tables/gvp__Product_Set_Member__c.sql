CREATE TABLE [SFIn].[gvp__Product_Set_Member__c] (
    [Id]                  char (18)   NOT NULL,
    [IsDeleted]           VARCHAR (10)   NULL,
    [Name]                NVARCHAR (200)  NULL,
    [CreatedDate]         DATETIME       NULL,
    [CreatedById]         char (18)   NULL,
    [LastModifiedDate]    DATETIME       NULL,
    [LastModifiedById]    char (18)   NULL,
    [SystemModstamp]      DATETIME       NULL,
    [LastViewedDate]      DATETIME       NULL,
    [LastReferencedDate]  DATETIME       NULL,
    [gvp__Product_Set__c] char (18)   NULL,
    [gvp__Brand__c]       char (18)   NULL,
    [gvp__Item__c]        char (18)   NULL,
    [gvp__Label__c]       char (18)   NULL,
    [gvp__Position__c]    DECIMAL (8, 4) NULL,
    [gvp__External_Id__c] VARCHAR(60)   NULL,
    CONSTRAINT [PK_gvp__Product_Set_Member__c] PRIMARY KEY CLUSTERED ([Id] ASC)
);

