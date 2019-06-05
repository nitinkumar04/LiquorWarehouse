CREATE TABLE [dbo].[DimRetailerTeam]
(
    [LWRetailerTeamSKey]  INT          IDENTITY (1, 1) NOT NULL,
    [RetailerTeamID]      char (18) NOT NULL DEFAULT '-1',
    RetailerTeamLN        nvarchar(100) not null default '-',
    LWRetailerDivisionSKey int not null default -1,
    [LWSourceID]            INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]      DATETIME     NULL,
    [SourceModifiedDate]    DATETIME     NULL,
    [LWCreateDate]          DATETIME     CONSTRAINT [DF_DimRetailerTeam_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]        DATETIME     CONSTRAINT [DF_DimRetailerTeam_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerTeamSKey] PRIMARY KEY CLUSTERED ([LWRetailerTeamSKey] ASC)
)
