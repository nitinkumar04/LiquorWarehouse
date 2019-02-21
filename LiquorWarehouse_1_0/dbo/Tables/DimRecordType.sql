CREATE TABLE [dbo].[DimRecordType] (
    [LWRecordTypeSKey]   INT          IDENTITY (1, 1) NOT NULL,
    [RecordTypeID]       char (18) NOT NULL DEFAULT '-1',
    [RecordTypeLD]       VARCHAR (50) NOT NULL DEFAULT 'No Data',
    [LWSourceID]         INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]   DATETIME     NULL,
    [SourceModifiedDate] DATETIME     NULL,
    [LWCreateDate]       DATETIME     CONSTRAINT [DF_DimRecordType_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]     DATETIME     CONSTRAINT [DF_DimRecordType_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DimRecordType] PRIMARY KEY CLUSTERED ([LWRecordTypeSKey] ASC)
);

