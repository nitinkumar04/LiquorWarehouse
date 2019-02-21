﻿CREATE TABLE [dbo].[DimRetailer] (
    [LWRetailerSKey]          INT              IDENTITY (1, 1) NOT NULL,
    [RetailerID]              char (18)     NOT NULL DEFAULT '-1',
    [RetailerLN]              NVARCHAR(100)    NOT NULL DEFAULT 'No Data',
    [RetailerDBA]             NVARCHAR(100)    NULL,
    [BDNID]                   VARCHAR (20)     NULL,
    [ExternalID]              VARCHAR (20)     NULL,
    [DistributorAccountID]    VARCHAR (20)     NULL,
    [LWRetailerURL]         NVARCHAR(100)    NOT NULL DEFAULT 'No Data',
    [LWPremiseTypeSKey]       INT              NOT NULL DEFAULT -1,
    [LWRetailerOwnerSKey]     INT              NOT NULL DEFAULT -1,
    [LWRetailerHQSKey]        INT              NOT NULL DEFAULT -1,
    [LWDistributorSKey]       INT              NULL,
    [DistributorRep]          NVARCHAR (100)    NULL,
    [DistributorTeam]         NVARCHAR (50)     NULL,
    [BillingStreet]           NVARCHAR (75)     NULL,
    [LWBillingCitySKey]       INT              NULL,
    [BillingPostalCode]       VARCHAR (9)      NULL,
    [ShippingStreet]          NVARCHAR (75)     NULL,
    [LWShippingCitySKey]      INT              NULL,
    [ShippingPostalCode]      VARCHAR (9)      NULL,
    [SegmentKey]              VARCHAR (50)     NULL,
    [SegmentChannel]          VARCHAR (50)     NULL,
    [BannerName]              NVARCHAR (50)     NULL,
    [WineFlag]                INT              NULL,
    [LiquorFlag]              INT              NULL,
    [BeerFlag]                INT              NULL,
    [FranchiseFlag]           INT              NULL,
    [LWFoodTypeSKey]          INT              NULL,
    [LWTradeChannelSKey]      INT              NULL,
    [ActiveFlag]              INT              NULL,
    [LWStatusSKey]            INT              NULL,
    [LWMarketingGroupSKey]    INT              NULL,
    [LicenseType]             VARCHAR (20)     NULL,
    [CustomerPriority]        INT              NULL,
    [AccountFormat]           VARCHAR (20)     NULL,
    [LWAccountTypeSKey]       INT              NULL,
    [KeyAccountChainFlag]     INT              NULL,
    [RetailerCustomCheckbox1] INT              NULL,
    [RetailerCustomCheckbox2] INT              NULL,
    [CreditAvailable]         MONEY            NULL,
    [CreditLimit]             MONEY            NULL,
    [CreditStatus]            VARCHAR (20)     NULL,
    [LicenseExpiration]       DATETIME         NULL,
    [LWMSASKey]               VARCHAR (20)     NULL,
    [DeliveryTime]            VARCHAR (25)     NULL,
    [SourceFile]              VARCHAR (50)     NULL,
    [Warehouse]               NVARCHAR (50)     NULL,
    [Latitude]                DECIMAL (14, 11) NULL,
    [Longitude]               DECIMAL (14, 11) NULL,
    [GeocodePrecision]        NVARCHAR (20)     NULL,
    [DecisionMakerName]       NVARCHAR (50)     NULL,
    [DecisionMakerEmail]      NVARCHAR (100)    NULL,
    [KPISegment]              char (18)     NULL,
    [AccountRank]             INT              NULL,
    [ConsumerDemographic]     NVARCHAR (100)    NULL,
    [PrimaryContact]          NVARCHAR (75)     NULL,
    [PrimaryContactEmail]     NVARCHAR (100)    NULL,
    [CompanySize]             NVARCHAR (50)     NULL,
    [LicenseNumber]           VARCHAR (20)     NULL,
    [NumberOfLocations]       INT              NULL,
    [FamilyOwnerCode]         VARCHAR (20)     NULL,
    [FIPSStateCode]           INT              NULL,
    [FIPSCountyCode]          INT              NULL,
    [OutletNumber]            VARCHAR (10)     NULL,
    [OutletPlaceName]         NVARCHAR (25)     NULL,
    [NumberOfFTE]             DECIMAL (5, 2)   NULL,
    [NumberOfRegisters]       INT              NULL,
    [SquareFootage]           DECIMAL (8, 2)   NULL,
    [AnnualVolume]            DECIMAL (7, 2)   NULL,
    [WeeklyVolume]            DECIMAL (7, 2)   NULL,
    [OwnerStateFIPSCode]      INT              NULL,
    [OwnerCountyFIPSCode]     INT              NULL,
    [OwnerState]              CHAR (2)         NULL,
    [RetailerCustom1]         NVARCHAR (200)    NULL,
    [RetailerCustom2]         NVARCHAR (200)    NULL,
    [RetailerCustom3]         NVARCHAR (200)    NULL,
    [RetailerCustom4]         NVARCHAR (200)    NULL,
    [RetailerCustom5]         NVARCHAR (200)    NULL,
    [RetailerCustom6]         NVARCHAR (200)    NULL,
    [RetailerCustom7]         NVARCHAR (200)    NULL,
    [RetailerCustom8]         NVARCHAR (200)    NULL,
    [RetailerCustom9]         NVARCHAR (200)    NULL,
    [RetailerCustom10]        NVARCHAR (200)    NULL,
    [RetailerCustomDate1]     DATETIME         NULL,
    [RetailerCustomDate2]     DATETIME         NULL,
    [BDNDateofData]           CHAR(6)         NULL,
    [BDNLastUpdate]           DATE         NULL,
    [BDNAddDate]              DATE         NULL,
    [BDNChangeDate]           DATE         NULL,
    [LWExistsInSFFlag]        INT              NOT NULL DEFAULT -1,
    [LWSourceID]              INT              NOT NULL DEFAULT -1,
    [SourceCreateDate]        DATETIME         NULL,
    [SourceModifiedDate]      DATETIME         NULL,
    [LWCreateDate]            DATETIME         CONSTRAINT [DF_DimRetailer_LWCreateDate] DEFAULT (getdate()) NOT NULL,
    [LWModifiedDate]          DATETIME         CONSTRAINT [DF_DimRetailer_LWModifiedDate] DEFAULT (getdate()) NOT NULL,
    [LWRowHash]               VARBINARY (16)   NULL,
    CONSTRAINT [PK_LWRetailerSKey] PRIMARY KEY CLUSTERED ([LWRetailerSKey] ASC)
);

