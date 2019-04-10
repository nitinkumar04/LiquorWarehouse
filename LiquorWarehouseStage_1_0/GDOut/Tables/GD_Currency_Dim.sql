CREATE TABLE [GDOut].[GD_Currency_Dim] (
    [Currency Dim Id]             VARCHAR (18) NOT NULL,
    [Currency ISO Code]           VARCHAR (20) NULL,
    [Currency Conversion Rate]      VARCHAR (50) NULL,
    [Currency Decimal Places]       VARCHAR (50) NULL,
    [Currency Is Active]          VARCHAR (6)  NULL,
    [Currency Is Corporate]       VARCHAR (6)  NULL,
    [Currency Corporate ISO Code] VARCHAR (5)  NULL, 
    CONSTRAINT [PK_GD_Currency_Dim] PRIMARY KEY ([Currency Dim Id])
);


