CREATE TABLE [GDOut].[GD_Txn_Type] (
    [Type Id]      VARCHAR (10) NOT NULL,
    [Type Name]    VARCHAR (30) NULL,
    [Type Plural]  VARCHAR (30) NULL,
    [Type Group]   VARCHAR (30) NULL,
    [Type Subtype] VARCHAR (30) NULL,
    [Type Order]   VARCHAR (10) NULL, 
    CONSTRAINT [PK_GD_Txn_Type] PRIMARY KEY ([Type Id])
);


