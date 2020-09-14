CREATE TABLE [ERPIn].[Budget_Goal_Months]
(
    RowNumber int identity(1,1) not null,
	Transaction_Type            char(1)       not null,
    Transaction_Date            date          not null,
	Geo_Key				varchar(30)	  null,
	Product_Key					varchar(30)	  null,
	Goal_Type					varchar(30)	  null,
	Value_Type	varchar(30) null,
	[Year] varchar(4) null,
	JAN decimal(14,4) null,
	FEB decimal(14,4) null,
	MAR decimal(14,4) null,
	APR decimal(14,4) null,
	MAY decimal(14,4) null,
	JUN decimal(14,4) null,
	JUL decimal(14,4) null,
	AUG decimal(14,4) null,
	SEP decimal(14,4) null,
	OCT decimal(14,4) null,
	NOV decimal(14,4) null,
	[DEC] decimal(14,4) null,
	CONSTRAINT [PK_Budget_Goal_Month] PRIMARY KEY ([RowNumber])

)
