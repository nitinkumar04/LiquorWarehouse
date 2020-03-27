CREATE TABLE [GVW].[AcctTypeDim](
	[GVWAcctTypeSKey] int identity(1,1),
	[ID] [varchar](20) NOT NULL,
	[Name] [varchar](20) NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0'
	CONSTRAINT [PK_AcctTypeDim] PRIMARY KEY ([GVWAcctTypeSKey])
);