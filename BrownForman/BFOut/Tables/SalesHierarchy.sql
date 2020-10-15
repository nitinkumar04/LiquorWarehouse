CREATE TABLE BFOut.[SalesHierarchy]
(
  State_Code	        nvarchar(2),
  House_Desc	        nvarchar(3) NOT NULL DEFAULT '',
  Division_Desc	      nvarchar(100),
  Division_ID	        varchar(18),
  AM_Name	            nvarchar(100),
  AM_ID	              varchar(18),
  DM_Desc	            varchar(18),
  DM_ID	              varchar(18),
  Salesperson_Desc	  nvarchar(30),
  Salesperson_Number	varchar(18),
  Salesperson_ID	    varchar(18) NOT NULL,
  Non_Comm_Flag	      nvarchar(1), 
    CONSTRAINT [PK_SalesHierarchy] PRIMARY KEY ([Salesperson_ID], [House_Desc])
)
