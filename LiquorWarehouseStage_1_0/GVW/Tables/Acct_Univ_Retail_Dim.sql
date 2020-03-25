﻿CREATE TABLE [GVW].[Acct_Univ_Retail_Dim] (
    [Account Retail Dim Id]                     VARCHAR(18)  NOT NULL,
    [Created Date]                              VARCHAR (20)  NULL,
    [Modified Date]                             VARCHAR (20)  NULL,
    [Account Customer Number]                   VARCHAR (120) NULL,
    [Account BDN Id]                            VARCHAR (40)  NULL,
    [Account DBA Name]                          NVARCHAR (100) NULL,
    [Account BDN Date of Data]                  CHAR (12)  NULL,
    [Account BDN Last Update]                   VARCHAR (10)  NULL,
    [Account BDN Add Date]                      VARCHAR (10)  NULL,
    [Account BDN Change Date]                   VARCHAR (10)  NULL,
    [Account Consumer Demographic]              NVARCHAR (100) NULL,
    [Account Primary Contact]                   NVARCHAR (100)  NULL,
    [Account Primary Email]                     NVARCHAR (100) NULL,
    [Account Company Size]                      NVARCHAR (100)  NULL,
    [Account Geo Precision Code]                VARCHAR (20)  NULL,
    [Account Latitude]                          VARCHAR (19)  NULL,
    [Account Longitude]                         VARCHAR (19)  NULL,
    [Account License Number]                    VARCHAR (20)  NULL,
    [Account Number of Locations]               VARCHAR (5)  NULL,
    [Account Family Owner Code]                 VARCHAR (20)  NULL,
    [Account Immediate Parent State]            NVARCHAR (35)  NULL,
    [Account Immediate Parent State FIPS Code]  VARCHAR (10)  NULL,
    [Account Immediate Parent County FIPS Code] VARCHAR (10)  NULL,
    [Account Outlet Number]                     VARCHAR (50)  NULL,
    [Account Outlet Place Name]                 VARCHAR (50) NULL,
    [Account Number of FTEs]                    VARCHAR (6)  NULL,
    [Account Number of Registers]               VARCHAR (5)  NULL,
    [Account Square Footage]                    VARCHAR (9)  NULL,
    [Account Annual Volume]                     VARCHAR (8)  NULL,
    [Account Weekly Volume]                     VARCHAR (8)  NULL,
    [Account Distributor Name]                  NVARCHAR (100)  NULL,
    [Account Distributor Team]                  NVARCHAR (100)  NULL,
    [Account Distributor Rep]                   NVARCHAR (100)  NULL, 
    CONSTRAINT [PK_Acct_Univ_Retail_Dim] PRIMARY KEY ([Account Retail Dim Id])
);

