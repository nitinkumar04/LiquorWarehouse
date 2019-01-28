CREATE TABLE [dbo].[DimSource] (
    [LBSourceID]   INT          NOT NULL,
    [LBSourceSD]   VARCHAR (2)  NOT NULL,
    [LBSourceLD]   VARCHAR (25) NOT NULL,
    [LBCreateDate] DATETIME     CONSTRAINT [DF_DimSource_LBCreateDate] DEFAULT (getdate()) NOT NULL, 
    CONSTRAINT [PK_DimSource] PRIMARY KEY ([LBSourceID])
);

