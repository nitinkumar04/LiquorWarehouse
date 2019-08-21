CREATE TABLE [SFIn].[LWDistributorParentRecordsAsChildren] (
    [Id]                                        char (18)   NOT NULL,
    [Name]                                      NVARCHAR (250)  NULL,
    [gvp__Active__c]                            VARCHAR (25)  NULL,
    [ParentId]                                  CHAR (18)  NULL,
    [OwnerId]                                   CHAR (18) NOT NULL,
    [CreatedDate]                               DATETIME NOT NULL,
    [LastModifiedDate]                          DATETIME  NULL,
    [gvp__Territory__c]                         NVARCHAR (50)  NULL,
    CONSTRAINT [PK_LWDistributorParentRecordsAsChildren] PRIMARY KEY ([Id])
);
GO