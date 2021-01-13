CREATE TABLE [GVP].[Attachment]
(
	[Id] char(18) NOT NULL , 
  [IsDeleted] VARCHAR(10) NULL, 
  [ParentId] char(18) NULL, 
  [ParentIdType] varchar(50) NULL,
  [Name] NVARCHAR(200) NOT NULL, 
  [IsPrivate] VARCHAR(10) NULL, 
  [ContentType] VARCHAR(100) NULL, 
  [BodyLength] INT NULL, 
  [OwnerId] char(18) NULL, 
  [CreatedDate] DATETIME NOT NULL, 
  [CreatedById] char(18) NOT NULL, 
  [LastModifiedDate] DATETIME NOT NULL, 
  [LastModifiedById] char(18) NOT NULL, 
  [SystemModstamp] DATETIME NOT NULL, 
  [Description] NVARCHAR(300) NULL, 
  CONSTRAINT [PK_Attachment] PRIMARY KEY ([Id])
)

