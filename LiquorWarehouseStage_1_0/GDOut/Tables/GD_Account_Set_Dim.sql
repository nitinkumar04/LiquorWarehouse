CREATE TABLE [GDOut].[GD_Account_Set_Dim](
	[Account Set Dim Id] [varchar](18) NOT NULL,
	[Account Set Dim Name] [varchar](100) NULL,
	[Account Set Dim URL] [varchar](200) NULL,
	[Account Set Dim Granularity] [varchar](50) NULL,
	[Account Dim Id] [varchar](18) NULL,
	[Acct Univ Dim Id] [varchar](18) NULL,
	[Created Date] [datetime] NULL,
	[Modified Date] [datetime] NULL,
	[Account Set Id] [varchar](18) NULL,
	[Account Set Name] [varchar](50) NULL,
	[Account Set URL] [varchar](200) NULL,
	[Account Set Test] [varchar](10) NULL,
	[Account Set Member Id] [varchar](18) NULL,
	[Account Set Member URL] [varchar](200) NULL,
	[Account Set Member Name] [nvarchar](20) NULL,
	[Account Set Account Name Number] [varchar](50) NULL, 
    CONSTRAINT [PK_GD_Account_Set_Dim] PRIMARY KEY ([Account Set Dim Id])
) ON [PRIMARY]
GO

