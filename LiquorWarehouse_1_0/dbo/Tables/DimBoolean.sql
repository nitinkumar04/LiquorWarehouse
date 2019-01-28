CREATE TABLE [dbo].[DimBoolean] (
    [LWBooleanSKey]  INT         NOT NULL,
    [TrueFalse]      VARCHAR (5) NOT NULL,
    [ActiveInactive] VARCHAR (8) NOT NULL,
    [AI]             CHAR (1)    NOT NULL,
    [YesNo]          VARCHAR (3) NOT NULL,
    [YN]             CHAR (1)    NOT NULL,
    CONSTRAINT [PK_DimBoolean] PRIMARY KEY CLUSTERED ([LWBooleanSKey] ASC)
);

