CREATE TABLE [ERPIn].[Orders]
(
	Transaction_Type            char(1)       not null,
    Transaction_Date            date          not null,
	Order_Number				varchar(30)	  not null,
	Order_Line_Number			varchar(30)	  not null,
	Ship_Date					date          null,
	Order_Date					date          not null,
	Order_Type					varchar(30)	  null,
	Order_Status				varchar(30)	  null,
	Distributor_Key				varchar(30)	  not null,
	Item_Key					varchar(30)	  not null,
	Physical_Cases			    decimal(16,2) not null,
	Extended_Price				money         null,
	Extended_Price_2			money,
    CONSTRAINT [PK_Orders] PRIMARY KEY ([Order_Number],[Order_Line_Number],[Distributor_Key],[Item_Key])
)