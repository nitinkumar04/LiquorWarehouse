CREATE TABLE SRSIn.[CTLDA]
(
  RECORDTYPE  varchar(6)    NOT NULL,
  DISTID      varchar(15)    NOT NULL,
  VIPSRS      varchar(5)    NOT NULL,
  DISTNM      varchar(50)   NOT NULL,
  CTITEM      varchar(20)   NOT NULL,
  CTQTY       decimal(7,2)  NOT NULL,
  CTUOM       varchar(1)    NOT NULL,
  CTDATE      varchar(6)    NOT NULL,
  CTPARENT    varchar(25),
  CTDISTITEM  varchar(10), 
    [FILENAME] VARCHAR(100) NOT NULL, 
    CONSTRAINT [PK_CTLDA] PRIMARY KEY ([DISTID], [CTITEM], [CTUOM], [CTDATE], [FILENAME])
)
