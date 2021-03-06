CREATE TABLE [GDOut].[GD_Media_Fact](
	[Media Fact Id] VARCHAR(18),
	[Media Name] [nvarchar](100) NULL,
	[Media URL] [nvarchar](200) NULL,
	[Created Date] CHAR(10) NULL,
	[Modified Date] CHAR(10) NULL,
	[Person Dim Id] VARCHAR(18) NULL,
	[Account Dim Id] VARCHAR(18) NULL,
	[Acct Univ Dim Id] VARCHAR(18) NULL,
	[Product Dim Id] VARCHAR(18) NULL,
	[Txn Type Id] [nvarchar](3) NULL,
	[Txn Date] DATE NULL,
	[Fiscal Date] DATE NULL,
	[Fiscal Date Dim Id] CHAR(10) NULL,
	[Media Date Time] [datetime] NULL,
	[Media Date] CHAR(10) NULL,
	[Media Time] CHAR(8) NULL,
	[Media Key] [nvarchar](19) NULL,
	[Media Record Type] [varchar](6) NULL,
	[Media Attachments] VARCHAR(18) NULL,
	[Media Comments] NVARCHAR(300) NULL,
	[Media Geocode] [varchar](100) NULL,
	[Media Latitude] DECIMAL(21, 18) NULL,
	[Media Longitude] DECIMAL(21, 18) NULL,
	[Media Distance] DECIMAL(9, 1) NULL,
	[Media Heading] DECIMAL(4, 1) NULL,
	[Media Location] [varchar](8) NULL,
	[Media Type] [varchar](50) NULL,
	[Media Competitor Name] [varchar](max) NULL,
	[Media Competitor Type] [varchar](max) NULL,
	[Media Attachment Id] [varchar](18) NULL,
	[Media Dashboard Image] [varchar](120) NULL,
	[Media Table Image] [varchar](120) NULL,
	[Media Product Id] [varchar](18) NULL,
	[Media Product Name] [varchar](100) NULL,
	[Media Product URL] [varchar](100) NULL,
	[Media Product Ownership] [varchar](15) NULL,
	[Media Product Type] [varchar](50) NULL,
	[Media Product Size Key] [varchar](max) NULL,
	[Txn_Date_Id] [int] NULL,
	[Fiscal_Date_Id] [int] NULL,
	[Competitor Dim Id] VARCHAR(18),
	 CONSTRAINT [PK_GD_Media_Fact] PRIMARY KEY ([Media Fact Id])
) ON [PRIMARY]
GO