CREATE TABLE [dbo].[DimSalesTeamDivision]
(
  LWSalesTeamDivisionSKey      int           not null identity(1,1),
  SalesTeamDivisionID          char(18)      not null default '-1',
  SalesTeamDivisionLN          varchar(100)  not null default 'No Data',
  [LWActiveFlag]           INT           NOT NULL DEFAULT -1,
  [LWSourceID]             INT           NOT NULL DEFAULT -1,
  [SourceCreateDate]       DATETIME      NULL,
  [SourceModifiedDate]     DATETIME      NULL,
  [LWCreateDate]           DATETIME      CONSTRAINT [DF_DimSalesTeamDivision_LWCreateDate] DEFAULT (getdate()) NOT NULL,
  [LWModifiedDate]         DATETIME      CONSTRAINT [DF_DimSalesTeamDivision_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
  CONSTRAINT [PK_LWSalesTeamDivisionSKey] PRIMARY KEY CLUSTERED ([LWSalesTeamDivisionSKey] ASC)
)
