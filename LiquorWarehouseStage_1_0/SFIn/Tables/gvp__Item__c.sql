﻿CREATE TABLE [SFIn].[gvp__Item__c] (
    [Id]                                    char (18)     NOT NULL,
    [IsDeleted]                             VARCHAR (10)     NULL,
    [Name]                                  NVARCHAR (100)    NULL,
    [RecordTypeId]                          char (18)     NULL,
    [CreatedDate]                           DATETIME         NULL,
    [CreatedById]                           char (18)     NULL,
    [LastModifiedDate]                      DATETIME         NULL,
    [LastModifiedById]                      char (18)     NULL,
    [SystemModstamp]                        DATETIME         NULL,
    [LastActivityDate]                      DATETIME         NULL,
    [LastViewedDate]                        DATETIME         NULL,
    [LastReferencedDate]                    DATETIME         NULL,
    [gvp__Label__c]                         char (18)     NULL,
    [gvp__Additional_Description__c]        NVARCHAR (200)    NULL,
    [gvp__Alcohol_by_Volume__c]             DECIMAL (10, 6)   NULL,
    [gvp__Brand__c]                         char (18)     NULL,
    [gvp__Designation__c]                   NVARCHAR (100)    NULL,
    [gvp__FOB_DI__c]                        MONEY            NULL,
    [gvp__FOB_Warehouse__c]                 MONEY            NULL,
    [gvp__Item_Description__c]              NVARCHAR (200)    NULL,
    [gvp__Item_Full_Name__c]                NVARCHAR (200)    NULL,
    [gvp__Item_Number__c]                   NVARCHAR (60)     NULL,
    [gvp__NABCA_Code__c]                    VARCHAR (20)     NULL,
    [gvp__Next_Order_Arrival__c]            DATE             NULL,
    [gvp__On_Order__c]                      DECIMAL (9, 4)   NULL,
    [gvp__Package__c]                       NVARCHAR (100)     NULL,
    [gvp__Price_Level_2__c]                 MONEY            NULL,
    [gvp__Price_Level_3__c]                 MONEY            NULL,
    [gvp__Price_Level_4__c]                 MONEY            NULL,
    [gvp__Price_Level_5__c]                 MONEY            NULL,
    [gvp__Price_List__c]                    MONEY            NULL,
    [gvp__Quantity__c]                      DECIMAL (13, 4)   NULL,
    [gvp__Rating_Enthusiast_del__c]         DECIMAL (3, 1)   NULL,
    [gvp__Rating_Parker_del__c]             DECIMAL (3, 1)   NULL,
    [gvp__Rating_Spectactor_del__c]         DECIMAL (3, 1)   NULL,
    [gvp__Rating_Tanzer_del__c]             DECIMAL (3, 1)   NULL,
    [gvp__ShipCompliant_Key__c]             VARCHAR (20)     NULL,
    [gvp__ShipCompliant_Type__c]            VARCHAR (100)    NULL,
    [gvp__Size__c]                          char (18)     NULL,
    [gvp__Suggested_Retail_Price__c]        MONEY            NULL,
    [gvp__Tax_Class__c]                     VARCHAR (20)     NULL,
    [gvp__UPC_Code__c]                      VARCHAR (30)     NULL,
    [gvp__Units__c]                         DECIMAL(5, 1)              NULL,
    [gvp__Vintage__c]                       VARCHAR (40)     NULL,
    [gvp__BrandLookup__c]                   NVARCHAR (100)    NULL,
    [gvp__Item_Key__c]                      VARCHAR (60)     NULL,
    [gvp__Available__c]                     VARCHAR (10)     NULL,
    [gvp__Price_Comments__c]                VARCHAR (200)    NULL,
    [gvp__X9L_Equivalent__c]                DECIMAL (14, 11) NULL,
    [gvp__Order_Unit__c]                    NVARCHAR (20)     NULL,
    [gvp__Ownership__c]                     NVARCHAR (20)     NULL,
    [gvp__Unit_Price__c]                    MONEY            NULL,
    [gvp__Unit_of_Measurement_Secondary__c] NVARCHAR (20)     NULL,
    [gvp__Unit_of_Measurement__c]           NVARCHAR (20)     NULL,
    [gvp__Custom_1__c]                      NVARCHAR (200)    NULL,
    [gvp__Custom_2__c]                      NVARCHAR (200)    NULL,
    [gvp__Key_Item__c]                      VARCHAR (10)     NULL,
    [gvp__Visible_on_Auth__c]               VARCHAR (10)     NULL,
    [gvp__Attachments__c]                   DECIMAL(4, 1)              NULL,
    [gvp__Custom_Checkbox_1__c]             NVARCHAR (10)     NULL,
    [gvp__Custom_Checkbox_2__c]             NVARCHAR (10)     NULL,
    [gvp__Custom_Picklist_1__c]             NVARCHAR (100)    NULL,
    [gvp__Custom_Picklist_2__c]             NVARCHAR (100)    NULL,
    [gvp__Custom_3__c]                      NVARCHAR (200)    NULL,
    [gvp__Custom_4__c]                      NVARCHAR (200)    NULL,
    [gvp__Custom_5__c]                      NVARCHAR (200)    NULL,
    [gvp__Custom_6__c]                      NVARCHAR (200)    NULL,
    [gvp__Custom_7__c]                      NVARCHAR (200)    NULL,
    [gvp__Custom_Fact_1__c]                 DECIMAL (12, 6)  NULL,
    [gvp__Custom_Fact_2__c]                 DECIMAL (12, 6)  NULL,
    [gvp__Proof__c]                         DECIMAL (5, 2)   NULL,
    CONSTRAINT [PK_gvp__Item__c] PRIMARY KEY CLUSTERED ([Id] ASC)
);

