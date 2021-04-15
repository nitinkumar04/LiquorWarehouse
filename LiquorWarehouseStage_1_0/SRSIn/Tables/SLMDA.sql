CREATE TABLE [SRSIn].[SLMDA]
(
	[RECORDTYPE] [varchar](6) NOT NULL,
	[SMSUPP] [varchar](10) NOT NULL,
	[SMDIST] [varchar](8) NOT NULL,
	[SMCODE] [varchar](5) NOT NULL,
	[SMNAME] [varchar](35) NOT NULL,
	[SML1] [varchar](5) NULL,
	[SML1NAME] [varchar](35) NULL,
	[SML2] [varchar](5) NULL,
	[SML2NAME] [varchar](35) NULL,
	[SML3] [varchar](5) NULL,
	[SML3NAME] [varchar](35) NULL,
	[SMDIV] [varchar](5) NULL,
	[SMDIVNAME] [varchar](35) NULL,
	[SMPARENT] [varchar](8) NULL,
	[FILENAME] VARCHAR(100) NOT NULL
) 