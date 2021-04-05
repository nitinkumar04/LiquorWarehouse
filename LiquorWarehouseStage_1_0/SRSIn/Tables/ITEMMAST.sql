﻿CREATE TABLE SRSIn.[ITEMMAST]
(
  SUPPID      varchar(3)    NOT NULL,
  DISTID      varchar(25),
  ITEM        varchar(10)   NOT NULL,
  [DESC]      varchar(60)   NOT NULL,
  CASEGTIN    varchar(16),
  RETGTIN     varchar(16),
  ACTDATE     varchar(10),
  DEADATE     varchar(10),
  UNITS       decimal(6,2)  NOT NULL,
  SELLUNIT    decimal(6,2),
  [WEIGHT]    decimal(7,3),
  OUNCE       decimal(6,2)  NOT NULL,
  PCASPAL     int,
  SCASPAL     int,
  ALCPCT      decimal(6,2),
  PKGCD       varchar(10)   NOT NULL,
  BRAND       varchar(10),
  BRDESC      varchar(25)   NOT NULL,
  GEO         varchar(10),
  PKGTYP      varchar(10),
  PKGSIZ      varchar(10),
  [CUBE]      decimal(7,2),
  LASTCHNG    date,
  [STATUS]    varchar(1)    NOT NULL,
  CONTAIN     varchar(1),
  TERRPTR     int,
  CAT1        varchar(20),
  CAT2        varchar(20),
  CAT3        varchar(20),
  CAT4        varchar(20),
  CAT5        varchar(20),
  CAT6        varchar(20),
	[FILENAME] VARCHAR(100) NOT NULL
)
