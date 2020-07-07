CREATE TABLE [GVW].[AcctSegmentDim](
	[GVWAcctSegmentSKey] int identity(1,1),
	[ID] VARCHAR(18) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Channel] [nvarchar](100) NULL,
	[Type] [nvarchar](100) NULL,
	[ParentID] VARCHAR(18) NULL,
	[ParentName] [nvarchar](100) NULL,
	[ParentCode] [nvarchar](100) NULL,
	[ParentChannel] [nvarchar](100) NULL,
	[ParentType] [nvarchar](100) NULL,
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
	GVWDeleted BIT NULL DEFAULT '0'
    CONSTRAINT [PK_AcctSegmentDim] PRIMARY KEY (GVWAcctSegmentSKey), 
    [GVWHash] VARCHAR(32) NOT NULL DEFAULT 0
);