CREATE TABLE [GVP].[CurrencyType](
	[Id] [varchar](18) NOT NULL,
	[IsoCode] [varchar](20) NULL,
	[ConversionRate] [varchar](50) NULL,
	[DecimalPlaces] [varchar](50) NULL,
	[IsActive] [varchar](6) NULL,
	[IsCorporate] [varchar](6) NULL,
	[CreatedDate]          DATETIME NULL,
    [CreatedById]          CHAR (18) NULL,
    [LastModifiedDate]     DATETIME NULL,
    [LastModifiedById]     CHAR (18) NULL,
    [SystemModstamp]       DATETIME NULL,
 CONSTRAINT [PK_CurrencyType] PRIMARY KEY ([Id]))