CREATE TABLE [dbo].[DimDistributorTeam]
(
    [LWDistributorTeamSKey] INT				IDENTITY (1, 1) NOT NULL,
    [DistributorTeamID]     char (18)		NOT NULL DEFAULT '-1',
    DistributorTeamLN       nvarchar(100)	not null default 'No Data',
    [LWSourceID]            INT				NOT NULL DEFAULT -1,
    [SourceCreateDate]      DATETIME		NULL,
    [SourceModifiedDate]    DATETIME		NULL,
    [LWCreateDate]          DATETIME		CONSTRAINT [DF_DimDistributorTeam_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]        DATETIME		CONSTRAINT [DF_DimDistributorTeam_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWDistributorTeamSKey] PRIMARY KEY CLUSTERED ([LWDistributorTeamSKey] ASC)
)
