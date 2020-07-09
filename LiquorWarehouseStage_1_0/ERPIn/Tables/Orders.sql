CREATE TABLE [ERPIn].[Orders]
(
	Transaction_Type            char(1)       not null,
    Transaction_Date            date          not null,
	Order_Number				varchar(30)	  not null,
	Order_Line_Number			varchar(30)	  not null,
	Ship_Date					date          not null,
	Order_Date					date          not null,
	Order_Type					varchar(30)	  not null,
	Order_Status				varchar(30)	  not null,
	Distributor_Key				varchar(30)	  not null,
	Item_Key					varchar(30)	  not null,
	Physical_Cases			    decimal(16,2) not null,
	Extended_Price				money         not null,
	Extended_Price_2			money,
    CONSTRAINT [PK_Orders] PRIMARY KEY ([Ship_Date],[Order_Number],[Order_Line_Number],[Distributor_Key],[Item_Key])
)