﻿CREATE TABLE [GVW].[Account_Custom_Dim](
	[Id] [varchar](18) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
	[Name] [nvarchar](200) NULL, 
    CONSTRAINT [PK_Account_Custom_Dim] PRIMARY KEY ([Id])
) ON [PRIMARY]
GO

