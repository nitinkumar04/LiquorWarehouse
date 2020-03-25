﻿CREATE TABLE [GVW].[Contact_Dim](
	[Contact Dim Id] [varchar](50) NOT NULL,
	[Contact Dim Name] [varchar](100) NULL,
	[Contact Dim Granularity] [varchar](50) NULL,
	[Contact Dim URL] [varchar](100) NULL,
	[Created Date] [varchar](50) NULL,
	[Modified Date] [varchar](50) NULL,
	[Contact Id] [varchar](50) NULL,
	[Contact URL] [varchar](100) NULL,
	[Contact Customer Key] [varchar](50) NULL,
	[Contact Salesman Key] [varchar](50) NULL,
	[Contact Email Key] [varchar](50) NULL,
	[Contact Full Name] [varchar](100) NULL,
	[Contact Last Name] [varchar](50) NULL,
	[Contact First Name] [varchar](50) NULL,
	[Contact Salutation] [varchar](50) NULL,
	[Contact Record Type] [varchar](50) NULL,
	[Contact Street] [varchar](200) NULL,
	[Contact City] [varchar](100) NULL,
	[Contact State] [varchar](50) NULL,
	[Contact Zip] [varchar](50) NULL,
	[Contact Country] [varchar](50) NULL,
	[Contact Phone] [varchar](50) NULL,
	[Contact Fax] [varchar](50) NULL,
	[Contact Mobile Phone] [varchar](50) NULL,
	[Contact Home Phone] [varchar](50) NULL,
	[Contact Work Phone] [varchar](50) NULL,
	[Contact Other Phone] [varchar](50) NULL,
	[Contact Email] [varchar](100) NULL,
	[Contact Work Email] [varchar](100) NULL,
	[Contact Title] [varchar](125) NULL,
	[Contact Department] [varchar](100) NULL,
	[Contact Active Indicator] [varchar](50) NULL,
	[Contact Do Not Email] [varchar](50) NULL,
	[Contact Do Not Call] [varchar](50) NULL,
	[Contact Level] [varchar](50) NULL,
	[Contact Source File] [varchar](50) NULL,
	[Contact Manager Id] [varchar](50) NULL,
	[Contact Manager URL] [varchar](100) NULL,
	[Contact Manager Last Name] [varchar](50) NULL,
	[Contact Manager First Name] [varchar](50) NULL,
	[Contact Manager Full Name] [varchar](50) NULL,
	[Contact Manager Email] [varchar](100) NULL,
	[Contact Owner Id] [varchar](50) NULL,
	[Contact Owner URL] [varchar](100) NULL,
	[Contact Owner Last Name] [varchar](50) NULL,
	[Contact Owner First Name] [varchar](50) NULL,
	[Contact Owner Full Name] [varchar](50) NULL,
	[Contact Owner Email] [varchar](100) NULL,
	[Account Dim Id] [varchar](50) NULL,
	[Acct Univ Dim Id] [varchar](50) NULL,
	[Contact Role] [varchar](200) NULL,
	[Contact Custom 1] [varchar](200) NULL,
	[Contact Custom 2] [varchar](200) NULL,
	[Contact Custom 3] [varchar](200) NULL,
	[Contact Custom 4] [varchar](200) NULL,
	[Contact Custom 5] [varchar](200) NULL,
	[Contact Zip5] [varchar](50) NULL, 
    CONSTRAINT [PK_Contact_Dim] PRIMARY KEY ([Contact Dim Id])
) ON [PRIMARY]
GO