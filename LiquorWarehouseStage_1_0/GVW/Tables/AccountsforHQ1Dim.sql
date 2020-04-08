CREATE TABLE [GVW].[AccountsforHQ1Dim](
	[GVWAccountsforHQ1SKey] int identity(1,1),
	[ID] [varchar](18) NOT NULL,
	[URL] [nvarchar](500) NULL,
	[Name] [varchar](200) NULL,
	[RecordType] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[State] [varchar](200) NULL,
	[KeyAccount] [varchar](200) NULL,
	[OwnerFullName] [varchar](200) NULL,
	[OwnerEmail] [varchar](200) NULL,
	[Level] [varchar](200) NULL,
	[Parent] [varchar](200) NULL,
	[KeyAcctChain1] [varchar](200) NULL,
	[KeyAcctChain2] [varchar](200) NULL,
	[CreatedDate] [varchar](200) NULL,
	[ModifiedDate] [varchar](200) NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
	GVWDeleted BIT NULL DEFAULT '0'
    CONSTRAINT [PK_AccountsforHQ1Dim] PRIMARY KEY (GVWAccountsforHQ1SKey), 
    [GVWHash] VARCHAR(32) NOT NULL DEFAULT 0 
);