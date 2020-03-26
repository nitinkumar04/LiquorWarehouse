CREATE TABLE [GVW].[AccountsforHQBy](
	[GVWAccountsforHQBySKey] int identity(1,1),
	[AcctUnivDimId] [varchar](18) NULL,
	[AcctHQDimId] [varchar](18) NULL,
	[Type] [varchar](200) NULL,
	GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1)
    CONSTRAINT [PK_AccountsforHQBy] PRIMARY KEY (GVWAccountsforHQBySKey) NOT NULL, 
    [GVWDeleted] BIT NULL
);