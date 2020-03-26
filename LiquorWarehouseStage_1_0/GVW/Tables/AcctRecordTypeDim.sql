CREATE TABLE [GVW].[AcctRecordTypeDim](
	[GVWAcctRecordTypeSKey] int identity(1,1),
	[Id] [varchar](18) NOT NULL,
	[Name] [varchar](100) NULL,
	[DeveloperName] [varchar](100) NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1)
    CONSTRAINT [PK_AcctRecordTypeDim] PRIMARY KEY (GVWAcctRecordTypeSKey) NOT NULL, 
    [GVWDeleted] BIT NULL
);