CREATE TABLE [dbo].[DimKeyAccount2]
(
    [LWKeyAccount2SKey]  INT          IDENTITY (1, 1) NOT NULL,
    [KeyAccount2ID]      char (18) NOT NULL DEFAULT '-1',
    KeyAccount2LN        nvarchar(100) not null default '-',
	[ActiveStatus]			VARCHAR(25)		NULL,
    [LWExistsInSFFlag]		INT				NOT NULL DEFAULT -1,
    [LWSourceID]            INT          NOT NULL DEFAULT -1,
    [SourceCreateDate]      DATETIME     NULL,
    [SourceModifiedDate]    DATETIME     NULL,
    [LWCreateDate]          DATETIME     CONSTRAINT [DF_DimKeyAccount2_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]        DATETIME     CONSTRAINT [DF_DimKeyAccount2_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_LWKeyAccount2SKey] PRIMARY KEY CLUSTERED ([LWKeyAccount2SKey] ASC)
)
