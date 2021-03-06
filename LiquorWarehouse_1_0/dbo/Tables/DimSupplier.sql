CREATE TABLE [dbo].[DimSupplier] (
    [LWSupplierSKey]     INT            IDENTITY (1, 1) NOT NULL,
    [SupplierID]         char (18)   NOT NULL DEFAULT '-1',
    [SupplierLN]         VARCHAR (100)  NOT NULL DEFAULT 'No Data',
    [ExternalID]         VARCHAR (20)   NULL,
    [LWSupplierURL]    VARCHAR (100)  NOT NULL DEFAULT 'No Data',
    [Street]             VARCHAR (75)   NULL,
    [City]               VARCHAR (50)   NULL,
    [LWStateSKey]        INT            NOT NULL DEFAULT -1,
    [PostalCode]         VARCHAR (9)    NULL,
    [LWCountrySKey]      INT            NOT NULL DEFAULT -1,
    [SupplierCustom1]    VARCHAR (256)  NULL,
    [SupplierCustom2]    VARCHAR (256)  NULL,
    [SupplierCustom3]    VARCHAR (256)  NULL,
    [SupplierCustom4]    VARCHAR (256)  NULL,
    [SupplierCustom5]    VARCHAR (256)  NULL,
    [LWExistsInSFFlag]   INT            NOT NULL DEFAULT -1,
    [LWSourceID]         INT            NULL,
    [SourceCreateDate]   DATETIME       NULL,
    [SourceModifiedDate] DATETIME       NULL,
    [LWCreateDate]       DATETIME       CONSTRAINT [DF_DimSupplier_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME       CONSTRAINT [DF_DimSupplier_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    [LWRowHash]          VARBINARY (16) NULL,
    CONSTRAINT [PK_DimSupplier] PRIMARY KEY CLUSTERED ([LWSupplierSKey] ASC)
);

