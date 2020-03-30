CREATE TABLE [GVW].[SalesDriverDim](
	[GVWSalesDriverSKey] int identity(1,1),
	[ID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0'
	CONSTRAINT [PK_SalesDriverDim] PRIMARY KEY ([GVWSalesDriverSKey])
);

