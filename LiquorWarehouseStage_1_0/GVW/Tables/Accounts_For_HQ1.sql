CREATE TABLE [GVW].[Accounts_for_HQ1](
	[Account Id] [varchar](18) NOT NULL,
	[Account URL] [nvarchar](500) NULL,
	[Account Name] [varchar](200) NULL,
	[Account Record Type] [varchar](200) NULL,
	[Account City] [varchar](200) NULL,
	[Account State] [varchar](200) NULL,
	[Account Key Account] [varchar](200) NULL,
	[Account Owner Full Name] [varchar](200) NULL,
	[Account Owner Email] [varchar](200) NULL,
	[Account Level] [varchar](200) NULL,
	[Parent] [varchar](200) NULL,
	[Key Acct Chain 1] [varchar](200) NULL,
	[Key Acct Chain 2] [varchar](200) NULL,
	[Created Date] [varchar](200) NULL,
	[Modified Date] [varchar](200) NULL, 
    CONSTRAINT [PK_Accounts_for_HQ1] PRIMARY KEY ([Account Id])
)