CREATE TABLE [GVP].[Currency](
	[Currency_Dim_Id] [varchar](18) NOT NULL,
	[Currency_ISO_Code] [varchar](20) NULL,
	[Currency_Conversion_Rate] [varchar](50) NULL,
	[Currency_Decimal_Places] [varchar](50) NULL,
	[Currency_Is_Active] [varchar](6) NULL,
	[Currency_Is_Corporate] [varchar](6) NULL,
	[Currency_Corporate_ISO_Code] [varchar](5) NULL,
 CONSTRAINT [PK_GD_Currency_Dim] PRIMARY KEY ([Currency_Dim_Id]))