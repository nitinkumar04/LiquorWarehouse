CREATE TABLE [SFIn].[Profile] (
    [Id]                 char (18)  NOT NULL,
    [Name]               NVARCHAR (100) NOT NULL,
	[Description]		 NVARCHAR (200) NULL,
    [CreatedDate]        DATETIME     NOT NULL,
    [CreatedById]        CHAR (18)  NULL,
    [LastModifiedDate]   DATETIME     NOT NULL,
    [LastModifiedById]   CHAR (18) NOT NULL,
    [SystemModstamp]     DATETIME     NOT NULL,
    [LastViewedDate]     DATETIME     NULL,
    [LastReferencedDate] DATETIME     NULL,
    CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED ([Id] ASC)
);

