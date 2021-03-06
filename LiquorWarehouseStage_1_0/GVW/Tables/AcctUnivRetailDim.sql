CREATE TABLE [GVW].[AcctUnivRetailDim] (
	[GVWAcctUnivRetailSKey] int identity(1,1),
    [ID]                     VARCHAR(18)  NOT NULL,
    [CreatedDate]                              VARCHAR (20)  NULL,
    [ModifiedDate]                             VARCHAR (20)  NULL,
    [CustomerNumber]                   VARCHAR (120) NULL,
    [BDNID]                            VARCHAR (40)  NULL,
    [DBAName]                          NVARCHAR (100) NULL,
    [BDNDateofData]                  CHAR (12)  NULL,
    [BDNLastUpdate]                   VARCHAR (10)  NULL,
    [BDNAddDate]                      VARCHAR (10)  NULL,
    [BDNChangeDate]                   VARCHAR (10)  NULL,
    [ConsumerDemographic]              NVARCHAR (100) NULL,
    [PrimaryContact]                   NVARCHAR (100)  NULL,
    [PrimaryEmail]                     NVARCHAR (100) NULL,
    [CompanySize]                      NVARCHAR (100)  NULL,
    [GeoPrecisionCode]                VARCHAR (20)  NULL,
    [Latitude]                          VARCHAR (19)  NULL,
    [Longitude]                         VARCHAR (19)  NULL,
    [LicenseNumber]                    NVARCHAR(25)  NULL,
    [NumberofLocations]               VARCHAR (8)  NULL,
    [FamilyOwnerCode]                 VARCHAR (20)  NULL,
    [ImmediateParentState]            NVARCHAR (35)  NULL,
    [ImmediateParentStateFIPSCode]  VARCHAR (10)  NULL,
    [ImmediateParentCountyFIPSCode] VARCHAR (10)  NULL,
    [OutletNumber]                     VARCHAR (50)  NULL,
    [OutletPlaceName]                 VARCHAR (50) NULL,
    [NumberofFTEs]                    VARCHAR (6)  NULL,
    [NumberofRegisters]               VARCHAR (5)  NULL,
    [SquareFootage]                    VARCHAR (9)  NULL,
    [AnnualVolume]                     VARCHAR (8)  NULL,
    [WeeklyVolume]                     VARCHAR (8)  NULL,
    [DistributorName]                  NVARCHAR (100)  NULL,
    [DistributorTeam]                  NVARCHAR (100)  NULL,
    [DistributorRep]                   NVARCHAR (100)  NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
	GVWDeleted BIT NULL DEFAULT '0'
    CONSTRAINT [PK_AcctUnivRetailDim] PRIMARY KEY (GVWAcctUnivRetailSKey), 
    [GVWHash] VARCHAR(32) NOT NULL DEFAULT 0
);
