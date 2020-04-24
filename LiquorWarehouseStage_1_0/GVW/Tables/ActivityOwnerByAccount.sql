CREATE TABLE [GVW].[ActivityOwnerByAccount]
(
	AcctUnivDimID VARCHAR(18),
	ActivityOwnerDimID VARCHAR(18),
	FirstName VARCHAR(512),
	FullName VARCHAR(512),
	LastName VARCHAR(512),
	GVWHash VARCHAR(32) NOT NULL DEFAULT 0, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
	GVWDeleted BIT NULL DEFAULT '0'
)
