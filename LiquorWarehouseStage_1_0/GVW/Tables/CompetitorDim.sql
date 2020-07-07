CREATE TABLE [GVW].[CompetitorDim] (
    GVWCompetitorSKey int identity(1,1),
    [ID]    VARCHAR (18)   NOT NULL,
    [Name]  NVARCHAR (200) NULL,
    [URL]   NVARCHAR (200) NULL,
  	[Granularity] NVARCHAR(30) NULL,
    [Type]      NVARCHAR (50)  NULL,
    [ExternalID]       NVARCHAR (100) NULL,
    [SizeExternalID]  NVARCHAR (50)  NULL,
    [SizeName] NVARCHAR (100) NULL, 
    [CreatedDate]           VARCHAR (25)  NULL,
    [ModifiedDate]          VARCHAR (25)  NULL,
    [GVWCreatedDate] DATETIME NOT NULL DEFAULT getdate(), 
    [GVWLastModifiedDate] DATETIME NOT NULL DEFAULT getdate(), 
    [GVWSourceID] INT NOT NULL DEFAULT 0, 
    [GVWDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_CompetitorDim] PRIMARY KEY ([GVWCompetitorSKey])
);


