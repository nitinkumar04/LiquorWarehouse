CREATE TABLE [ERPIn].[Depletion]
(
  Transaction_Type            char(1)       not null,
  Transaction_Date            date          not null,
  Distributor_Key             varchar(255)  not null,
  Item_Key                    varchar(255)  not null,
  Date_of_Data                date          not null,
  Physical_Cases              decimal(14,4) NOT null,
  Opening_Balance             DECIMAL(14, 4)         null,
  Closing_Balance             DECIMAL(14, 4)         null,
  Adjustments                 DECIMAL(14, 4),
  In_Bond                     DECIMAL(14, 4),
  On_Order                    DECIMAL(14, 4),
  Receipts                    DECIMAL(14, 4),
  Transfers_In                DECIMAL(14, 4),
  Transfers_Out               DECIMAL(14, 4),
  Wholesales_Sales            DECIMAL(14, 4), 
    [SourceFile] VARCHAR(100) NULL, 
    CONSTRAINT [PK_Depletion] PRIMARY KEY ([Distributor_Key], [Item_Key], [Date_of_Data])
)
