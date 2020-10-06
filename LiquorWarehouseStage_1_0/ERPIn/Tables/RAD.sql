CREATE TABLE [ERPIn].[RAD]
(
  Transaction_Type        char(1)       NOT NULL,
  Transaction_Date        date          NULL,
  Item_Key                varchar(255)  NOT NULL,
  [Distributor_Key]         varchar(255)  NOT NULL,
  Retailer_Ext_Key        varchar(255)  NOT NULL,
  Date_of_Data            date          NOT NULL,
  Physical_Cases          decimal(16,2) NOT NULL,
  Extended_Price          money,
  [Extended_Price_2]         money,
  Invoice_Number          varchar(255),
  Dist_Item_Number        varchar(255),
  Order_Number            varchar(255),
  Sales_Rep_Key           varchar(40),
  Sales_Div_Key           varchar(20),
  Tax_Amount              money,
  Addl_Charges_Amt        money,
  Deposit_Amt             money,
  Custom_1                nvarchar(255),
  Custom_2                nvarchar(255),
  Unit_of_Measure         varchar(20), 
  [SourceFile] VARCHAR(100) NULL
)
