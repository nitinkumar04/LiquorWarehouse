﻿CREATE TABLE [GDOut].[GD_Shipment_Fact](
	[Shipment Fact Id] VARCHAR(20) NOT NULL,
	[Shipment Fact Name] [nvarchar](100) NULL,
	[Shipment Fact URL] [nvarchar](200) NULL,
	[Shipment Fact Type] [varchar](6) NULL,
	[Created Date] [date] NULL,
	[Modified Date] [date] NULL,
	[Product Dim Id] [char](18) NULL,
	[Geography Dim Id] [char](18) NULL,
	[Transaction Type Id] [varchar](5) NULL,
	[Txn Date] [date] NULL,
	[Fiscal Date] [date] NULL,
	[Fiscal Year] [varchar](6) NULL,
	[Fiscal Month] [varchar](4) NULL,
	[Txn Alt Date] [date] NULL,
	[Shipment Key] [varchar](100) NULL,
	[Shipment Order Type] [nvarchar](100) NULL,
	[Shipment Status] [nvarchar](100) NULL,
	[Shipment Physical Cases] [decimal](11, 3) NULL,
	[Shipment 9L Cases] [decimal](14, 6) NULL,
	[Shipment Full Case Equivalent] [decimal](14, 6) NULL,
	[Shipment Primary Volume] [decimal](14, 6) NULL,
	[Shipment Secondary Volume] [decimal](14, 6) NULL,
	[Shipment Extended Price 1] [money] NULL,
	[Shipment Extended Price 2] [money] NULL,
	[Shipment Custom 1] [nvarchar](200) NULL,
	[Shipment Custom 2] [nvarchar](200) NULL,
	[Shipment Fact 1] [decimal](15, 8) NULL,
	[Shipment Fact 2] [decimal](15, 8) NULL,
	[Account Dim Id] [char](18) NULL,
	[Shipment Rpt Current Ind] [varchar](3) NULL,
	[Fiscal Date Dim Id] [date] NULL,
	[Currency Dim Id] [char](18) NULL,
	[Acct Univ Dim Id] [char](18) NULL,
	[Shipment Source System] [varchar](20) NULL,
	[Shipment Order Number] [varchar](30) NULL,
	[Shipment Invoice Number] [varchar](50) NULL,
	[Start Date] [date] NULL,
	[End Date] [date] NULL,
	[Txn_Date_Id] [varchar](50) NULL,
	[Fiscal_Date_Id] [varchar](50) NULL,
	[Txn_Alt_Date_Id] [varchar](50) NULL,
	[Start_Date_Id] [varchar](50) NULL,
	[End_Date_Id] [varchar](50) NULL
	 CONSTRAINT [PK_GD_Shipment_Fact] PRIMARY KEY ([Shipment Fact Id])
);