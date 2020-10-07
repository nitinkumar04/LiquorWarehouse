CREATE TABLE BFOut.[Customer]
(
  State_Code              nvarchar(2),
  House_Desc              nvarchar(3),
  Premise_Desc            nvarchar(100),
  TDLinx_NO               int,
  Lic_Type_Desc           nvarchar(100),
  CustID                  varchar(100) NOT NULL,
  Customer_ID             varchar(20),
  Customer_Name           nvarchar(250),
  Customer_Address        nvarchar(250),
  Customer_City           nvarchar(30),
  ZIP_Code                nvarchar(10),
  Beer_Class_Code         nvarchar(40),
  Spirits_Class_Code      nvarchar(40),
  Wine_Class_Code         nvarchar(40),
  Master_Chain_ID         varchar(20),
  Master_Chain_Desc       nvarchar(100),
  Chain_Store_ID          varchar(20),
  Chain_Store_Desc        nvarchar(100),
  TDL_Trade_Channel_Desc  nvarchar(30),
  TDL_Sub_Channel_Desc    nvarchar(30), 
    CONSTRAINT [PK_Customer] PRIMARY KEY ([CustID])
)
