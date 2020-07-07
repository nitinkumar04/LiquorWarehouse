CREATE TABLE [GVW].[SalesDivisionDim] (
	[GVWSalesDivisionSKey] int identity(1,1),
    [ID]   VARCHAR (18)   NOT NULL,
    [Name] VARCHAR (50)   NULL,
    [URL]  NVARCHAR (200) NULL,
    [CreatedDate]              CHAR(10)       NULL,
    [ModifiedDate]             CHAR(10)       NULL,
    [IndList] VARCHAR (30)   NULL,
    [Key]      VARCHAR (30)   NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0'
	CONSTRAINT [PK_SalesDivisionDim] PRIMARY KEY ([GVWSalesDivisionSKey])
);