CREATE TABLE [ERPIn].[Orders]
(
  RowNumber int identity(1,1) not null,
	Transaction_Type            char(1)       not null,
    Transaction_Date            date          not null,
	Order_Number				varchar(30)	  null,
	Order_Line_Number			varchar(30)	  null,
	Ship_Date					date          null,
	Order_Date					VARCHAR(10)          null,
	Order_Type					varchar(30)	  null,
	Order_Status				varchar(30)	  null,
	Distributor_Key				varchar(30)	  null,
	Item_Key					varchar(30)	  null,
	Physical_Cases			    decimal(16,2) null,
	Extended_Price				money         null,
	Extended_Price_2			money,
    CONSTRAINT [PK_Orders] PRIMARY KEY ([RowNumber])
)