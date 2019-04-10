CREATE TABLE [GDOut].[GD_Accounts_for_HQ_By](
	[Acct_Univ_Dim_Id] [varchar](18) NOT NULL,
	[Acct_HQ_Dim_Id] [varchar](18) NULL,
	[Type] [varchar](200) NULL, 
    CONSTRAINT [PK_GD_Accounts_for_HQ_By] PRIMARY KEY ([Acct_Univ_Dim_Id])
)