CREATE TABLE [GDOut].[GD_Acct_Segment_Dim](
	[Acct Segment Dim Id] [char](18) NOT NULL,
	[Acct Segment Name] [nvarchar](100) NULL,
	[Acct Segment Code] [nvarchar](100) NULL,
	[Acct Segment Channel] [nvarchar](100) NULL,
	[Acct Segment Type] [nvarchar](100) NULL,
	[Acct Segment Parent Id] [char](18) NULL,
	[Acct Segment Parent Name] [nvarchar](100) NULL,
	[Acct Segment Parent Code] [nvarchar](100) NULL,
	[Acct Segment Parent Channel] [nvarchar](100) NULL,
	[Acct Segment Parent Type] [nvarchar](100) NULL,
	CONSTRAINT [PK_GD_Acct_Segment_Dim] PRIMARY KEY ([Acct Segment Dim Id])
) ON [PRIMARY]
GO