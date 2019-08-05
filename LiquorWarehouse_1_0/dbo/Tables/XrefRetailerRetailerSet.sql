CREATE TABLE [dbo].[XRefRetailerRetailerSet]
(
  [LWRetailerSKey]    INT      NOT NULL DEFAULT -1, 
  [LWRetailerSetSKey] INT      NOT NULL DEFAULT -1, 
  [LWSourceID]        INT      NOT NULL DEFAULT -1,
  [LWCreateDate]      DATETIME CONSTRAINT [DF_XRefRetailerRetailerSet_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]    DATETIME CONSTRAINT [DF_XRefRetailerRetailerSet_LWModifiedDate] DEFAULT (getdate()) NOT NULL, 
  CONSTRAINT [PK_XRefRetailerRetailerSet] PRIMARY KEY ([LWRetailerSetSKey], [LWRetailerSKey])
)
