CREATE TABLE [dbo].[DimPerson](
	[LWPersonSKey] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [char](18) NOT NULL ,
	[PersonLastName] [nvarchar](50) NOT NULL,
	[PersonFirstName] [nvarchar](50)  NULL,
	[LWCompanySKey] [int],
	[LWDivisionSKey] [int],
	[PersonDepartment] [nvarchar](90) NULL,
	[PersonTitle] [nvarchar](100) NULL,
	[Street] [nvarchar](235) NULL,
	[City] [nvarchar](40) NULL,
	[LWStateSKey] [int] NULL,
	[PostalCode] [nvarchar](25) NULL,
	[LWCountrySKey] [int] NULL,
	[Email] [nvarchar](75) NULL,
	[Phone] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[MobilePhone] [varchar](40) NULL,
	[ActiveStatus] [varchar](25) NULL,
	[TimeZoneSidKey] [varchar](35) NULL,
	[LWContactSKey] [char](18) NULL,
	[LWExistsInSFFlag] [int] NOT NULL,
	[LWSourceID] [int] NOT NULL,
	[SourceCreateDate] [datetime] NOT NULL,
	[SourceModifiedDate] [datetime] NOT NULL,
	[LWCreateDate] [datetime] NOT NULL,
	[LWModifiedDate] [datetime] NOT NULL,
	[LWRowHash] [binary](16) NOT NULL,
 CONSTRAINT [PK_LWPersonSKey] PRIMARY KEY CLUSTERED 
(
	[LWPersonSKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ('-1') FOR [PersonID]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ('No Data') FOR [PersonLastName]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ('No Data') FOR [PersonFirstName]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ((-1)) FOR [LWCompanySKey]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ((-1)) FOR [LWDivisionSKey]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ((-1)) FOR [LWStateSKey]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ((-1)) FOR [LWCountrySKey]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ((-1)) FOR [LWContactSKey]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ((-1)) FOR [LWExistsInSFFlag]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ((-1)) FOR [LWSourceID]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ('1/1/1900') FOR [SourceCreateDate]
GO

ALTER TABLE [dbo].[DimPerson] ADD  DEFAULT ('1/1/1900') FOR [SourceModifiedDate]
GO

ALTER TABLE [dbo].[DimPerson] ADD  CONSTRAINT [DF_DimPerson_LWCreateDate]  DEFAULT (getdate()) FOR [LWCreateDate]
GO

ALTER TABLE [dbo].[DimPerson] ADD  CONSTRAINT [DF_DimPerson_LWModifiedDate]  DEFAULT (getdate()) FOR [LWModifiedDate]
GO