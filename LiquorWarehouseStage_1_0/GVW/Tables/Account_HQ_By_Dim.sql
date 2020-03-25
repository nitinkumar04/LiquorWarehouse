CREATE TABLE [GVW].[Account_HQ_By_Dim](
	[Acct Univ HQ By Dim Id] [varchar](50) NOT NULL,
	[Acct HQ Dim Id] [varchar](18) NULL,
	[Acct Univ Dim Id] [varchar](18) NULL,
	[Acct Univ HQ By Level] [nvarchar](50) NULL,
	[Acct Univ HQ By Count] [nvarchar](20) NULL,
	[Acct Univ HQ Type] [nvarchar](50) NULL, 
    CONSTRAINT [PK_Account_HQ_By_Dim] PRIMARY KEY ([Acct Univ HQ By Dim Id])
) ON [PRIMARY]
GO

