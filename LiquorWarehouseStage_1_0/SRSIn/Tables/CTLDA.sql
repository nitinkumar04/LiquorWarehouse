CREATE TABLE [SRSIn].[CTLDA](
	[RECORDTYPE] [varchar](6) NOT NULL,
	[DISTID] [varchar](8) NOT NULL,
	[VIPSRS] [varchar](5) NOT NULL,
	[DISTNM] [varchar](40) NOT NULL,
	[CTITEM] [varchar](10) NOT NULL,
	[CTQTY] [numeric](10, 0) NOT NULL,
	[CTUOM] [varchar](1) NOT NULL,
	[CTDATE] [varchar](6) NOT NULL,
	[CTPARENT] [varchar](8) NULL,
	[CTDISTITEM] [varchar](10) NULL,
	 [FILENAME] VARCHAR(100) NOT NULL
)