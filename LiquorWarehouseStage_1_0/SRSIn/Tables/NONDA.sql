CREATE TABLE SRSIn.[NONDA]
(
  RECORDTYPE    varchar(6)    NOT NULL,
  DISTID        varchar(6)    NOT NULL,
  DISTNAME      varchar(6)    NOT NULL,
  INDATE        varchar(8)    NOT NULL,
  INRANK        varchar(10)    NOT NULL,
  INTYPE        varchar(3)    NOT NULL,
  INTERR        varchar(2)    NOT NULL,
	[FILENAME] VARCHAR(100) NOT NULL
    CONSTRAINT [PK_NONDA] PRIMARY KEY ([DISTID], [INDATE])
)
