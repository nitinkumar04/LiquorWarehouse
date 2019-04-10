CREATE TABLE [GDOut].[GD_Acct_Univ_HQ_By_Dim] (
    [Acct Univ HQ By Dim Id] VARCHAR (20)  NOT NULL,
    [Acct HQ Dim Id]         VARCHAR (18)  NULL,
    [Acct Univ Dim Id]       VARCHAR (18)  NULL,
    [Acct Univ HQ By Level]  NVARCHAR (10) NULL,
    [Acct Univ HQ By Count]  NVARCHAR (10) NULL,
    [Acct Univ HQ Type]      VARCHAR (20)  NULL, 
    CONSTRAINT [PK_GD_Acct_Univ_HQ_By_Dim] PRIMARY KEY ([Acct Univ HQ By Dim Id])
);


