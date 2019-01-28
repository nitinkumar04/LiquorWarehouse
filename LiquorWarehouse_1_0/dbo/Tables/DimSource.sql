CREATE TABLE [dbo].[DimSource] (
    [LWSourceID]   INT          NOT NULL,
    [LWSourceSD]   VARCHAR (2)  NOT NULL,
    [LWSourceLD]   VARCHAR (25) NOT NULL,
    [LWCreateDate] DATETIME     CONSTRAINT [DF_DimSource_LWCreateDate] DEFAULT (getdate()) NOT NULL, 
    CONSTRAINT [PK_DimSource] PRIMARY KEY ([LWSourceID])
);

