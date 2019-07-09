CREATE TABLE [dbo].[DimContact] (
    [LWContactSKey]    INT          IDENTITY (1, 1) NOT NULL,
    [ContactID]        char (18) NOT NULL DEFAULT '-1',
    [ContactFirstName] VARCHAR (50) NULL,
    [ContactLastName]  VARCHAR (80) NOT NULL DEFAULT 'No Data',
    [LWActiveFlag]           INT          NOT NULL DEFAULT -1,
    [LWSourceID]             INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]       DATETIME     NULL,
    [SourceModifiedDate]     DATETIME     NULL,
    [LWCreateDate]           DATETIME     CONSTRAINT [DF_DimContact_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME     CONSTRAINT [DF_DimContact_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWContactSKey] PRIMARY KEY CLUSTERED ([LWContactSKey] ASC)
);

