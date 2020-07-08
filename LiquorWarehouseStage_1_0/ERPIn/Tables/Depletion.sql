CREATE TABLE [ERPIn].[Depletion]
(
  Transaction_Type            char(1)       not null,
  Transaction_Date            date          not null,
  Distributor_Key             varchar(255)  not null,
  Item_Key                    varchar(255)  not null,
  Date_of_Data                date          not null,
  Physical_Cases              decimal(16,2) not null,
  Opening_Balance             money         not null,
  Closing_Balance             money         not null,
  Adjustments                 money,
  In_Bond                     money,
  On_Order                    money,
  Receipts                    money,
  Transfers_In                money,
  Transfers_Out               money,
  Wholesales_Sales            money, 
    CONSTRAINT [PK_Depletion] PRIMARY KEY ([Distributor_Key], [Item_Key], [Date_of_Data])
)
