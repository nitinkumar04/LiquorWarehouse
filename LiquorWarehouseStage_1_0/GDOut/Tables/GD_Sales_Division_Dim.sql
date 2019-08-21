CREATE TABLE [GDOut].[GD_Sales_Division_Dim] (
    [Sales_Division_Dim_Id]   VARCHAR (18)   NOT NULL,
    [Sales_Division_Dim_Name] VARCHAR (50)   NULL,
    [Sales_Division_Dim_URL]  NVARCHAR (200) NULL,
    [Created_Date]              DATE       NULL,
    [Modified_Date]             DATE       NULL,
    [Sales_Division_Id]       VARCHAR (18)   NULL,
    [Sales_Division_Name]     VARCHAR (50)   NULL,
    [Sales_Division_URL]      NVARCHAR (200) NULL,
    [Sales_Division_Ind_List] VARCHAR (30)   NULL,
    [Sales_Division_Key]      VARCHAR (30)   NULL, 
    CONSTRAINT [PK_GD_Sales_Division_Dim] PRIMARY KEY ([Sales_Division_Dim_Id])
);


