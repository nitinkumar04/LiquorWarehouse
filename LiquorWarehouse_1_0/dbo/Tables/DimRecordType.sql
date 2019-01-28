CREATE TABLE [dbo].[DimRecordType] (
    [LBRecordTypeSKey]   INT          IDENTITY (1, 1) NOT NULL,
    [RecordTypeID]       char (18) NOT NULL,
    [RecordTypeLD]       VARCHAR (50) NOT NULL,
    [LBSourceID]         INT          NOT NULL,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LBCreateDate]       DATETIME     CONSTRAINT [DF_DimRecordType_LBCreateDate] DEFAULT (getdate()) NOT NULL,
    [LBModifiedDate]     DATETIME     CONSTRAINT [DF_DimRecordType_LBModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimRecordType] PRIMARY KEY CLUSTERED ([LBRecordTypeSKey] ASC)
);

