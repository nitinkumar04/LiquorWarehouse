CREATE TABLE [dbo].[XRefDistributorRetailer]
(
  [LWXrefDistributorRetailerSKey] INT NOT NULL, 
  [LWDistributorSKey] int not null default -1,
  [LWRetailerSKey] int not null default -1,
  DistributorAccountID  varchar(20)   null,
  [DistributorRep]          NVARCHAR (100)    NULL,
  [DistributorTeam]         NVARCHAR (100)     NULL,
  [LWSourceID]          INT          NOT NULL DEFAULT -1,
  [SourceCreateDate]    DATETIME     NULL,
  [SourceModifiedDate]  DATETIME     NULL,
  [LWCreateDate]        DATETIME     CONSTRAINT [DF_XrefDistributorRetailer_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]      DATETIME     CONSTRAINT [DF_XrefDistributorRetailer_LWModifiedDate] DEFAULT (getdate()) NOT NULL, 
  CONSTRAINT [FK_XRefDistributorRetailer_DimDistributor] FOREIGN KEY (LWDistributorSKey) REFERENCES DimDistributor(LWDistributorSKey),
  CONSTRAINT [PK_XrefDistributorRetailer] PRIMARY KEY ([LWXrefDistributorRetailerSKey])
)
