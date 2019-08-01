CREATE TABLE [dbo].[DimSalesGoalOwner]
(
    [LWSalesGoalOwnerSKey]    INT          IDENTITY (1, 1) NOT NULL,
    [SalesGoalOwnerID]        char (18) NOT NULL DEFAULT '-1',
    [SalesGoalOwnerFirstName] VARCHAR (50) NULL,
    [SalesGoalOwnerLastName]  VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWActiveFlag]           INT          NOT NULL DEFAULT -1,
    [LWSourceID]             INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]       DATETIME     NULL,
    [SourceModifiedDate]     DATETIME     NULL,
    [LWCreateDate]           DATETIME     CONSTRAINT [DF_DimSalesGoalOwner_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME     CONSTRAINT [DF_DimSalesGoalOwner_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWSalesGoalOwnerSKey] PRIMARY KEY CLUSTERED ([LWSalesGoalOwnerSKey] ASC)
)
