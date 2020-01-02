CREATE TABLE [GDOut].[GD_Competitor_Dim] (
    [Competitor Dim Id]    VARCHAR (18)   NOT NULL,
    [Competitor Dim Name]  NVARCHAR (200) NULL,
    [Competitor Dim URL]   NVARCHAR (200) NULL,
	[Competitor Dim Granularity] NVARCHAR(30) NULL,
    [Created Date]           VARCHAR (MAX)  NULL,
    [Modified Date]          VARCHAR (MAX)  NULL,
    [Competitor Id]        VARCHAR (18)   NULL,
    [Competitor Name]      NVARCHAR (200) NULL,
    [Competitor URL]       NVARCHAR (200) NULL,
    [Competitor Type]      NVARCHAR (50)  NULL,
    [Competitor Key]       NVARCHAR (100) NULL,
    [Competitor Size Key]  NVARCHAR (50)  NULL,
    [Competitor Size Name] NVARCHAR (100) NULL, 
    CONSTRAINT [PK_GD_Competitor_Dim] PRIMARY KEY ([Competitor Dim Id])
);


