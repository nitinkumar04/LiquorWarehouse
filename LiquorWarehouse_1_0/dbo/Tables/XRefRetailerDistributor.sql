CREATE TABLE [dbo].[XRefRetailerDistributor]
(
  [LWRetailerSKey]      INT NOT NULL  DEFAULT -1, 
  [LWDistributorSKey]   INT NOT NULL DEFAULT -1, 
  LWDistributorTeamSKey int not null default -1,
  LWDistributorRepSKey  int not null default -1,
  DistributorAccountID  nvarchar(30) not null default '-',
  RetailerAccountID     nvarchar(18) not null default '-',
  [LWSourceID]          INT          NOT NULL DEFAULT -1,
  [LWCreateDate]        DATETIME     CONSTRAINT [DF_XRefRetailerDistributor_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]      DATETIME     CONSTRAINT [DF_XRefRetailerDistributor_LWModifiedDate] DEFAULT (getdate()) NOT NULL, 
  CONSTRAINT [PK_XrefRetailerDistributor] PRIMARY KEY ([LWDistributorSKey], [LWRetailerSKey])
)