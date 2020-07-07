CREATE TABLE [GVW].[AccountsforHQByDim](
	[GVWAccountsforHQBySKey] int identity(1,1),
	[AcctUnivDimID] [varchar](18) NULL,
	[AcctHQDimID] [varchar](18) NULL,
	[Type] [varchar](200) NULL,
	GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
	GVWDeleted BIT NULL DEFAULT '0'
    CONSTRAINT [PK_AccountsforHQByDim] PRIMARY KEY (GVWAccountsforHQBySKey)
);