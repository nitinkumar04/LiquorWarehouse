CREATE TABLE [dbo].[DimRetailerType]
(
    [LWRetailerTypeSKey]    INT           IDENTITY (1, 1) NOT NULL,
    [RetailerTypeID]        char (18)     NOT NULL DEFAULT '-1',
    RetailerTypeLN          nvarchar(100) not null default '-',
    RetailerTypeDescription nvarchar(255) null,
    SalesforceDeveloperName varchar(100)  null,
    [LWActiveFlag]              int           not null default -1,
    [LWSourceID]            INT           NOT NULL DEFAULT -1,
    [SourceCreateDate]      DATETIME      NULL,
    [SourceModifiedDate]    DATETIME      NULL,
    [LWCreateDate]          DATETIME      CONSTRAINT [DF_DimRetailerType_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]        DATETIME      CONSTRAINT [DF_DimRetailerType_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWRetailerTypeSKey] PRIMARY KEY CLUSTERED ([LWRetailerTypeSKey] ASC)
)
