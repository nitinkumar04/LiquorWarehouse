CREATE TABLE [dbo].[LoadErrorLog](
  [ID] int identity(1,1),
	[RUUID] [varchar](72) NULL,
	[SnapName] [varchar](100) NULL,
	[ErrorDateTime] [datetime] NULL,
	[Error] [varchar](1000) NULL,
	[Reason] [varchar](1000) NULL, 
    CONSTRAINT [PK_LoadErrorLog] PRIMARY KEY ([ID])
) ON [PRIMARY]