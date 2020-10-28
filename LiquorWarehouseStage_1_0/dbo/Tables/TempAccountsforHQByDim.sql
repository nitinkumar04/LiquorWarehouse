CREATE TABLE dbo.[TempAccountsforHQByDim](
	[AcctUnivDimID]           varchar(18) NOT NULL,
	[AcctHQDimID]             varchar(18) NOT NULL,
	[Type]                    varchar(200) NOT NULL,
	GVWCreatedDate            datetime    default getdate() NOT NULL,
  GVWLastModifiedDate       datetime    default getdate() NOT NULL,
  GVWSourceID               INT default (-1),
	GVWDeleted                BIT NULL DEFAULT '0', 
    CONSTRAINT [PK_TempAccountsforHQByDim] PRIMARY KEY ([AcctUnivDimID], [AcctHQDimID], [Type])
);