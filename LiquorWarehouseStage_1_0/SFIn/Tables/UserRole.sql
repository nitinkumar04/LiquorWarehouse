CREATE TABLE [SFIn].[UserRole] (
    [Id]                CHAR (18)  NOT NULL,
    [Name]              VARCHAR (100) NOT NULL,
    [ParentRoleId]      CHAR (18)  NULL,
    [RollupDescription] VARCHAR (75)  NULL,
    [LastModifiedDate]  DATETIME     NOT NULL,
    [LastModifiedById]  CHAR (18) NOT NULL,
    [SystemModstamp]    DATETIME     NOT NULL,
    [DeveloperName]     VARCHAR (50)  NULL,
    CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED ([Id] ASC)
);

