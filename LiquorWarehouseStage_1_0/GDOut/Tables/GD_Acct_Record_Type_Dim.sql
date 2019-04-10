CREATE TABLE [GDOut].[GD_Acct_Record_Type_Dim](
	[Account Record Type Dim Id] [varchar](18) NOT NULL,
	[Account Record Type Name] [varchar](100) NULL,
	[Account Record Type Developer Name] [varchar](100) NULL, 
    CONSTRAINT [PK_GD_Acct_Record_Type_Dim] PRIMARY KEY ([Account Record Type Dim Id])
) ON [PRIMARY]
GO

