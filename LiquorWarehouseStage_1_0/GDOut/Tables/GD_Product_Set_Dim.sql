CREATE TABLE [GDOut].[GD_Product_Set_Dim] (
    [Product Set Dim Id]          VARCHAR (18)  NOT NULL,
    [Product Set Dim Name]        VARCHAR (100) NULL,
    [Product Set Dim URL]         VARCHAR (200) NULL,
    [Product Set Dim Granularity] VARCHAR (50)  NULL,
    [Created Date]                DATETIME      NULL,
    [Modified Date]               DATETIME      NULL,
    [Product Dim Id]              VARCHAR (18)  NULL,
    [Product Set Id]              VARCHAR (18)  NULL,
    [Product Set Name]            VARCHAR (100) NULL,
    [Product Set URL]             VARCHAR (200) NULL,
    [Product Set Product Level]   VARCHAR (50)  NULL,
    [Product Set Brand Name]      VARCHAR (100) NULL,
    [Product Set Label Name]      VARCHAR (200) NULL,
    [Product Set Item Name]       VARCHAR (200) NULL,
    [Prod Set Member Id]          VARCHAR (18)  NULL,
    [Prod Set Member Name]        VARCHAR (100) NULL,
    [Prod Set Member URL]         VARCHAR (200) NULL,
    [Prod Set Member Position]    SMALLINT      NULL, 
    CONSTRAINT [PK_GD_Product_Set_Dim] PRIMARY KEY ([Product Set Dim Id])
);


