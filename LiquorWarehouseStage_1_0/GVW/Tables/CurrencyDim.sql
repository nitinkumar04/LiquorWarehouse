CREATE TABLE [GVW].[CurrencyDim] (
	[GVWCurrencySKey] int identity(1,1),
    [ID]             VARCHAR (18) NOT NULL,
    [ISOCode]           VARCHAR (20) NULL,
    [ConversionRate]      VARCHAR (50) NULL,
    [DecimalPlaces]       VARCHAR (50) NULL,
    [IsActive]          VARCHAR (6)  NULL,
    [IsCorporate]       VARCHAR (6)  NULL,
    [CorporateISOCode] VARCHAR (5)  NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0',
	GVWHash VARCHAR(32) NOT NULL DEFAULT 0, 
	CONSTRAINT [PK_CurrencyDim] PRIMARY KEY ([GVWCurrencySKey])
);
