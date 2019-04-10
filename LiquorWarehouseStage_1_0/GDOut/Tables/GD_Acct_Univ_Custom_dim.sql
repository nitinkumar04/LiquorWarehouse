CREATE TABLE [GDOut].[GD_Acct_Univ_Custom_Dim] (
    [Id]               VARCHAR (18)   NOT NULL,
    [CreatedDate]      DATETIME       NULL,
    [LastModifiedDate] DATETIME       NULL,
    [Name]             NVARCHAR (200) NULL, 
    CONSTRAINT [PK_GD_Acct_Univ_Custom_Dim] PRIMARY KEY ([Id])
);


