CREATE TABLE [dbo].[RecordTypeMapper]
(
    [Name]              NVARCHAR (100) NOT NULL,
    [DeveloperName]     VARCHAR (100) NOT NULL,
    [ID]                CHAR (18)  NOT NULL,
    [Description]       NVARCHAR (255) NULL,
    [SobjectType]       VARCHAR (40) NOT NULL,
    [IsActive]          VARCHAR (10) NOT NULL, 
    [Retailer] BIT NULL DEFAULT 0, 
    [Parent] BIT NULL DEFAULT 0, 
    [Distributor] BIT NULL DEFAULT 0, 
    [Supplier] BIT NULL DEFAULT 0, 
    [OnPremise] BIT NULL DEFAULT 0, 
    [OffPremise] BIT NULL DEFAULT 0, 
    [OtherNonRetail] BIT NULL DEFAULT 0, 
    [Other] BIT NULL DEFAULT 0, 
    [CreatedDate]       DATETIME  NOT NULL,
    [LastModifiedDate]  DATETIME NOT NULL
)
