﻿CREATE TABLE [GVW].[AcctUnivDim] (
	[GVWAcctUnivSKey] int identity(1,1),
    [ID]                    VARCHAR(18)  NOT NULL,
    [Name]                  NVARCHAR (250)  NULL,
    [Granularity]           VARCHAR (20)   NULL,
    [URL]                   NVARCHAR (100)  NULL,
    AccountID               VARCHAR(18),
    AccountName             nvarchar(250),
    AccountURL              nvarchar(100),
    [AcctUnivHierDimID]          VARCHAR(18)  NULL,
    [AcctUnivRetailDimID]             VARCHAR(18)  NULL,
    [AccountCustomDimID]             VARCHAR(18)  NULL,
    [CreatedDate]                      VARCHAR(10)      NULL,
    [ModifiedDate]                     VARCHAR(10)      NULL,
    [CompanyExternalID]                       NVARCHAR (50)   NULL,
    [CompanyName]                      NVARCHAR (100)  NULL,
    [DivisionExternalID]                      NVARCHAR (30)   NULL,
    [DivisionName]                     NVARCHAR(100)  NULL,
    [RegionExternalID]                        NVARCHAR (50)   NULL,
    [RegionName]                       NVARCHAR (100)  NULL,
    [TerritoryID]                      VARCHAR(18)  NULL,
    [TerritoryURL]                     NVARCHAR (100)  NULL,
    [TerritoryExternalID]                     NVARCHAR (50)   NULL,
    [TerritoryName]                    NVARCHAR (200)  NULL,
    [TerritoryCustom1]                NVARCHAR(200) NULL,
    [TerritoryCustom2]                NVARCHAR(200) NULL,
    [OwnerID]                  VARCHAR(18)  NULL,
    [OwnerURL]                 NVARCHAR(100)  NULL,
    [OwnerLastName]           NVARCHAR(50)  NULL,
    [OwnerFirstName]          NVARCHAR(50)   NULL,
    [OwnerFullName]           NVARCHAR (100)  NULL,
    [OwnerEmail]               NVARCHAR (200)  NULL,
    [Level]                     VARCHAR (25)  NULL,
    [ExternalID]                       VARCHAR (70)  NULL,
    [NameNumber]               NVARCHAR (320) NULL,
    [RecordType]               VARCHAR(30)  NULL,
    [Street]                    NVARCHAR (250)  NULL,
    [City]                      NVARCHAR (50)  NULL,
    [State]                     NVARCHAR (35)  NULL,
    [Zip]                       NVARCHAR (20)  NULL,
    [Country]                   NVARCHAR (40)  NULL,
    [County]                    NVARCHAR (50)  NULL,
    [Phone]                     NVARCHAR (50)  NULL,
    [KeyAccount]               VARCHAR (10)   NULL,
    [Groups]                    NVARCHAR (100)   NULL,
    [Custom1]                  NVARCHAR (255)  NULL,
    [Custom2]                  NVARCHAR (255) NULL,
    [Custom3]                  NVARCHAR (255) NULL,
    [Custom4]                  NVARCHAR (255) NULL,
    [Custom5]                  NVARCHAR (255) NULL,
    [SegmentName]              NVARCHAR (100) NULL,
    [SegmentExternalID]               NVARCHAR (100) NULL,
    [SegmentChannel]           NVARCHAR (100) NULL,
    [BannerName]               NVARCHAR (100)  NULL,
    [WineIndicator]            VARCHAR (20)   NULL,
    [LiquorIndicator]          VARCHAR (100)   NULL,
    [BeerIndicator]            VARCHAR (60)   NULL,
    [FranchiseIndicator]       VARCHAR (10)   NULL,
    [PremiseType]              VARCHAR (30)  NULL,
    [ClassofTrade]            VARCHAR (30)  NULL,
    [FoodType]                 NVARCHAR (100)  NULL,
    [TradeChannel]             NVARCHAR (100)  NULL,
    [TradeSubChannel]         NVARCHAR (100)  NULL,
    [ChainIndicator]                 NVARCHAR(100)  NULL,
    [OnPremiseIndicator]      VARCHAR (10)  NULL,
    [StoreStatus]              NVARCHAR(100)  NULL,
    [ActiveIndicator]          VARCHAR (25)   NULL,
    [MarketingGroupCode]      VARCHAR (20) NULL,
    [MarketingGroupName]      NVARCHAR (100) NULL,
    [MarketingGroupOwnership] CHAR (20) NULL,
    [UltimateParentCode]      VARCHAR(18)        NULL,
    [UltimateParentName]      NVARCHAR (100)  NULL,
    [ImmediateParentName]     NVARCHAR (100)  NULL,
    [LicenseType]              VARCHAR (20) NULL,
    [CustomerPriority]         NVARCHAR (150) NULL,
    [Format]                    NVARCHAR (200)  NULL,
    [Type]                      NVARCHAR (100)  NULL,
    [KeyAcctChain1DimID]           VARCHAR(18)  NULL,
    [KeyAcctChain2DimID]           VARCHAR(18)  NULL,
    [KeyAcctChainIndicator]          NVARCHAR (100)  NULL,
    [AcctRecordTypeDimID]           VARCHAR(18) NULL,
    [AcctSegmentDimID]               VARCHAR(18) NULL,
    [CurrencyDimID]                   VARCHAR(18) NULL,
    [Description]               NVARCHAR (2000) NULL,
    [CustomCheckbox1]         NVARCHAR (100)   NULL,
    [CustomCheckbox2]         NVARCHAR (100)   NULL,
    [Custom6]                  NVARCHAR (255)  NULL,
    [Custom7]                  NVARCHAR (255)  NULL,
    [Custom8]                  NVARCHAR (255)   NULL,
    [Custom9]                  NVARCHAR (255)   NULL,
    [Custom10]                 NVARCHAR (255)  NULL,
    [CreditAvailable]          VARCHAR(50) NULL,
    [CreditLimit]              VARCHAR(50) NULL,
    [CreditStatus]             NVARCHAR (100) NULL,
    [LicenseExpiration]        VARCHAR (10) NULL,
    [MSACode]                  VARCHAR (5)   NULL,
    [MSAName]                  VARCHAR (200)  NULL,
    [ResaleNumber]             NVARCHAR (250)  NULL,
    [CustomDate1]             VARCHAR (10) NULL,
    [CustomDate2]             VARCHAR (10) NULL,
    [DeliveryTime]             NVARCHAR (70)  NULL,
    [SourceFile]               VARCHAR (100)  NULL,
    [Warehouse]                 NVARCHAR (100) NULL,
    [DistributorRep]           VARCHAR(50)  NULL,
    [DistributorTeam]          NVARCHAR (100)  NULL,
    [DistributorName]          NVARCHAR (250)  NULL,
    [RegionCustom1]                   NVARCHAR (200) NULL,
    [RegionCustom2]                   NVARCHAR (200) NULL,
    [DivisionCustom1]                 NVARCHAR (200) NULL,
    [DivisionCustom2]                 NVARCHAR (200) NULL,
    [CompanyCustom1]                  NVARCHAR (200) NULL,
    [CompanyCustom2]                  NVARCHAR (200) NULL,
    [GeocodeUnavailable]       VARCHAR (10)   NULL,
    [Geocode]                   VARCHAR (38) NULL,
    [GeocodeLatitude]          VARCHAR (19) NULL,
    [GeocodeLongitude]         VARCHAR (19) NULL,
    [DecisionMakerName]       NVARCHAR (110) NULL,
    [DecisionMakerEmail]      NVARCHAR (200) NULL,
    [FIPSCountyGeocode]       VARCHAR (29)  NULL,
    [FIPSCountyName]          NVARCHAR (50)  NULL,
    [KPISegmentDimID]                VARCHAR(18)   NULL,
    [ShippingStreet]           NVARCHAR (250)  NULL,
    [ShippingCity]             NVARCHAR (50)  NULL,
    [ShippingState]            NVARCHAR (30)  NULL,
    [ShippingZip]              NVARCHAR (20)  NULL,
    [ShippingCountry]          NVARCHAR (25)   NULL,
    [Rank]                      VARCHAR (17)    NULL,
    [TerritoryCustom3]                NVARCHAR (200) NULL,
    [TerritoryCustom4]                NVARCHAR (200) NULL,
    [TerritoryCustom5]                NVARCHAR (200) NULL,
    [DivisionCustom3]                 NVARCHAR (200) NULL,
    [DivisionCustom4]                 NVARCHAR (200) NULL,
    [DivisionCustom5]                 NVARCHAR (200) NULL,
    [BeerVolume]               NVARCHAR (100) NULL,
    [LiquorVolume]             NVARCHAR (100) NULL,
    [WineVolume]               NVARCHAR (100) NULL,
    [AcctTypeDimID]                  NVARCHAR(100)  NULL,
    [AcctUnivOwnerDimID]              VARCHAR(18)  NULL,
    [AcctUnivMktgGroupDimID]          varchar(18)  null,
    [Zip5]                      VARCHAR (5)   NULL,
    [ShippingZip5]             VARCHAR (5)   NULL,
    [CompanyID]                        VARCHAR(18)  NULL,
    [DivisionID]                       VARCHAR(18)  NULL,
    [RegionID]                         VARCHAR(18)  NULL,
    [CreateDateID]                    VARCHAR (5)   NULL, 
    GVWCreatedDate       datetime    default getdate() NOT NULL,
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,
    GVWSourceID  INT default (-1),
    GVWDeleted BIT NULL DEFAULT '0',
    [GVWHash] VARCHAR(32) NULL
	CONSTRAINT [PK_AcctUnivDim] PRIMARY KEY ([GVWAcctUnivSKey])
);
