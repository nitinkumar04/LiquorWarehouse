CREATE TABLE [dbo].[DimKeyAccount1]
(
    [LWKeyAccount1SKey]  INT          IDENTITY (1, 1) NOT NULL,
    [KeyAccount1ID]      char (18) NOT NULL DEFAULT '-1',
    KeyAccount1LN        nvarchar(100) not null default '-',
    [LWSourceID]            INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]      DATETIME     NULL,
    [SourceModifiedDate]    DATETIME     NULL,
    [LWCreateDate]          DATETIME     CONSTRAINT [DF_DimKeyAccount1_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]        DATETIME     CONSTRAINT [DF_DimKeyAccount1_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWKeyAccount1SKey] PRIMARY KEY CLUSTERED ([LWKeyAccount1SKey] ASC)
)
