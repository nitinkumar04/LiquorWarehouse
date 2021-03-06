CREATE TABLE [GDOut].[GD_Manager_Dim](
	[Person Dim Id] VARCHAR(18) NOT NULL,
	[Person Dim Name] [nvarchar](110) NULL,
	[Person Dim Granularity] [nvarchar](30) NULL,
	[Person Dim URL] [nvarchar](200) NULL,
	[Created Date] [nvarchar](10) NULL,
	[Modified Date] [nvarchar](10) NULL,
	[Person Id] VARCHAR(18) NULL,
	[Person URL] [nvarchar](200) NULL,
	[Person Key 1] [varchar](100) NULL,
	[Person Key 2] [varchar](100) NULL,
	[Person Email Key] [varchar](100) NULL,
	[Person Full Name] [nvarchar](110) NULL,
	[Person Last Name] [nvarchar](80) NULL,
	[Person First Name] [nvarchar](50) NULL,
	[Person Salutation] [nvarchar](30) NULL,
	[Person Record Type] VARCHAR(18) NULL,
	[Person Street] [nvarchar](300) NULL,
	[Person City] [nvarchar](100) NULL,
	[Person State] [nvarchar](50) NULL,
	[Person Zip] [nvarchar](25) NULL,
	[Person Country] [nvarchar](50) NULL,
	[Person Phone] [varchar](50) NULL,
	[Person Fax] [varchar](40) NULL,
	[Person Mobile Phone] [varchar](50) NULL,
	[Person Home Phone] [varchar](25) NULL,
	[Person Work Phone] [varchar](50) NULL,
	[Person Other Phone] [varchar](30) NULL,
	[Person Email] [nvarchar](200) NULL,
	[Person Work Email] [nvarchar](100) NULL,
	[Person Title] [nvarchar](125) NULL,
	[Person Company] [nvarchar](100) NULL,
	[Person Department] [nvarchar](100) NULL,
	[Person Division] [nvarchar](100) NULL,
	[Person Active Indicator] [varchar](10) NULL,
	[Person Do Not Email] [varchar](10) NULL,
	[Person Do Not Call] [varchar](10) NULL,
	[Person Level] [nvarchar](20) NULL,
	[Person Source File] [nvarchar](50) NULL,
	[Person Role Name] [nvarchar](110) NULL,
	[Person Profile Name] [varchar](50) NULL,
	[Person Manager Id] VARCHAR(18) NULL,
	[Person Manager URL] [nvarchar](200) NULL,
	[Person Manager Last Name] [nvarchar](80) NULL,
	[Person Manager First Name] [varchar](50) NULL,
	[Person Manager Full Name] [nvarchar](110) NULL,
	[Person Manager Email] [varchar](50) NULL,
	[Person Owner Id] VARCHAR(18) NULL,
	[Person Owner URL] [nvarchar](200) NULL,
	[Person Owner Last Name] [nvarchar](50) NULL,
	[Person Owner First Name] [nvarchar](50) NULL,
	[Person Owner Full Name] [nvarchar](80) NULL,
	[Person Owner Email] [nvarchar](75) NULL,
	[Person Custom 1] [nvarchar](200) NULL,
	[Person Custom 2] [nvarchar](200) NULL,
	[Person Custom 3] [nvarchar](200) NULL,
	[Person Custom 4] [nvarchar](200) NULL,
	[Person Custom 5] [nvarchar](200) NULL,
	[Person Zip5] [nvarchar](25),
	CONSTRAINT [PK_GD_Manager_Dim] PRIMARY KEY ([Person Dim Id])
) ON [PRIMARY]
GO