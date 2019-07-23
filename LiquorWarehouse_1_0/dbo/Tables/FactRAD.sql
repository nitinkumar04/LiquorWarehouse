CREATE TABLE [dbo].[FactRAD]
(
   [LWRetailerSKey]			int				not null default -1,
   [LWDistributorSKey]		int				not null default -1,
   [LWItemSKey]				int				not null default -1, 
   LWSalesTeamDivisionSKey      int   not null default -1,
   [DistributorsRetailerID]	varchar(10)		not null default '-1',
   [TransactionDate]		DATE			NOT NULL DEFAULT '1/1/1900',
   [RADKey]					varchar(100)	NOT null,
   [Quantity]				decimal(14,4)	null,
   [Price1]					money			null,
   [Price2]					money			null,
   [ActiveStatus]			VARCHAR(25)		NULL,
   [LWSourceID]				INT				NOT NULL DEFAULT -1, 
   [SourceCreateDate]		DATETIME		NULL, 
   [SourceModifiedDate]		DATETIME		NULL, 
   [LWCreateDate]			DATETIME		NOT NULL DEFAULT (getdate()), 
   [LWModifiedDate]			DATETIME		NOT NULL DEFAULT (getdate()), 
    CONSTRAINT [PK_FactRAD] PRIMARY KEY ([LWRetailerSKey], [LWDistributorSKey], [LWItemSKey], DistributorsRetailerID, [TransactionDate], [RADKey])
)
