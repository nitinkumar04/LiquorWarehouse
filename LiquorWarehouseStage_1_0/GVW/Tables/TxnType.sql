CREATE TABLE [GVW].[TxnType] (
    GVWTxnTypeSKey int identity(1,1),
    [TypeId]      VARCHAR (20) NOT NULL,
    [TypeName]    VARCHAR (30) NULL,
    [TypePlural]  VARCHAR (30) NULL,
    [TypeGroup]   VARCHAR (30) NULL,
    [TypeSubtype] VARCHAR (30) NULL,
    [TypeOrder]   VARCHAR (10) NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1)
    CONSTRAINT [PK_TxnType] PRIMARY KEY (GVWTxnTypesKey) NOT NULL, 
    [GVWDeleted] BIT NULL
);


