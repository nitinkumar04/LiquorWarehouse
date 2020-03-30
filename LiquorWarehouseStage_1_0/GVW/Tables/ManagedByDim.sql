CREATE TABLE [GVW].[ManagedByDim] (
    [GVWManagedBySKey] int identity(1,1),
	[ID] VARCHAR (37) NOT NULL,
    [ManagerDimID]    VARCHAR (18) NULL,
    [PersonDimID]     VARCHAR (18) NULL,
    [ManagedByLevel]  VARCHAR (30) NULL,
    [ManagedByCount]  VARCHAR (20) NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0'
	CONSTRAINT [PK_ManagedByDim] PRIMARY KEY ([GVWManagedBySKey])
);