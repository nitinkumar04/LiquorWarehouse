CREATE TABLE SRSIn.[SRSVALUE]
(
  RECORDTYPE  varchar(6)  NOT NULL,
  FIELD       varchar(10) NOT NULL,
  FIELDNAME   varchar(20) NOT NULL,
  CODE        varchar(3)  NOT NULL,
  [DESC]      varchar(50) NOT NULL, 
    CONSTRAINT [PK_SRSVALUE] PRIMARY KEY ([FIELD], [CODE]),
)
