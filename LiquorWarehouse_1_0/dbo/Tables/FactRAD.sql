CREATE TABLE [dbo].[FactRAD]
(
   LWRetailerSKey   int   not null default -1,
   LWDistributorSKey int  not null default -1,
   LWItemSKey int         not null default -1, 
   [TransactionDate] DATE NOT NULL DEFAULT '1/1/1900', 
    CONSTRAINT [PK_FactRAD] PRIMARY KEY ([LWRetailerSKey], [LWDistributorSKey], [LWItemSKey], [TransactionDate])
)
