CREATE TABLE [dbo].[DimRetailerOwner] (
    [LWRetailerOwnerSKey]    INT          IDENTITY (1, 1) NOT NULL,
    [RetailerOwnerID]        char (18) NOT NULL DEFAULT '-1',
    [RetailerOwnerFirstName] VARCHAR (25) NULL,
    [RetailerOwnerLastName]  VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWSourceID]             INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]       DATETIME     NULL,
    [SourceModifiedDate]     DATETIME     NULL,
    [LWCreateDate]           DATETIME     CONSTRAINT [DF_DimRetailerOwner_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]         DATETIME     CONSTRAINT [DF_DimRetailerOwner_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerOwnerSKey] PRIMARY KEY CLUSTERED ([LWRetailerOwnerSKey] ASC)
);

