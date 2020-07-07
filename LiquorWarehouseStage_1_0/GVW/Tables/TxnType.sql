CREATE TABLE [GVW].[TxnType] (
    GVWTxnTypeSKey int identity(1,1),
    [Id]      VARCHAR (20) NOT NULL,
    [Name]    VARCHAR (30) NULL,
    [Plural]  VARCHAR (30) NULL,
    [Group]   VARCHAR (30) NULL,
    [Subtype] VARCHAR (30) NULL,
    [Order]   VARCHAR (10) NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default 0,
    [GVWDeleted] BIT NOT NULL DEFAULT 0,
    CONSTRAINT [PK_TxnType] PRIMARY KEY (GVWTxnTypesKey)
);


