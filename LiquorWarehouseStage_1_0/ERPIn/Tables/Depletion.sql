CREATE TABLE [ERPIn].[Depletion]
(
  RowNumber int identity(1,1) not null,
  Transaction_Type            char(1)       NOT null,
  Transaction_Date            date          NOT null,
  Distributor_Key             varchar(255)  null,
  Item_Key                    varchar(255)  null,
  Date_of_Data                VARCHAR(10)          null,
  Physical_Cases              decimal(16,2) null,
  Opening_Balance             money         null,
  Closing_Balance             money         null,
  Adjustments                 money,
  In_Bond                     money,
  On_Order                    money,
  Receipts                    money,
  Transfers_In                money,
  Transfers_Out               money,
  Wholesales_Sales            money, 
  [SourceFile] VARCHAR(100) NULL, 
    CONSTRAINT [PK_Depletion] PRIMARY KEY ([RowNumber])
)
