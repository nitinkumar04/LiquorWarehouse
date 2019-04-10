﻿CREATE TABLE [GDOut].[GD_Event_Fact] (
    [Event Fact Id]         VARCHAR (20)   NOT NULL,
    [Event Fact URL]        NVARCHAR (200) NULL,
    [Created Date]            DATETIME       NULL,
    [Modified Date]           DATETIME       NULL,
    [Txn Date]                DATETIME       NULL,
    [Txn Alt Date]            DATETIME       NULL,
    [Create Date]             DATETIME       NULL,
    [Fiscal_Date]             DATETIME       NULL,
    [Fiscal_Month]          VARCHAR (4)    NULL,
    [Fiscal_Year]           VARCHAR (6)    NULL,
    [Fiscal Date Dim Id]      DATETIME       NULL,
    [Account Dim Id]        VARCHAR (20)   NULL,
    [Acct Univ Dim Id]      VARCHAR (20)   NULL,
    [Contact Dim Id]        VARCHAR (20)   NULL,
    [Person Dim Id]         VARCHAR (20)   NULL,
    [Geography Dim Id]      VARCHAR (20)   NULL,
    [Product Dim Id]        VARCHAR (20)   NULL,
    [Transaction Type Id]   VARCHAR (10)   NULL,
    [Event Id]              VARCHAR (20)   NULL,
    [Event URL]             NVARCHAR (20)  NULL,
    [Event Subject]         VARCHAR (50)   NULL,
    [Event Location]        VARCHAR (50)   NULL,
    [Event Is All Day]        VARCHAR (6)    NULL,
    [Event Duration Min]      VARCHAR (10)   NULL,
    [Event Date]            VARCHAR (20)   NULL,
    [Event Start Time]      VARCHAR (12)   NULL,
    [Event End Time]        VARCHAR (12)   NULL,
    [Event Description]     NVARCHAR (200) NULL,
    [Event Type]            NVARCHAR (300) NULL,
    [Event Is Private]        VARCHAR (10)   NULL,
    [Event Show As]         VARCHAR (20)   NULL,
    [Event Is Group]          VARCHAR (20)   NULL,
    [Event Group Type]      VARCHAR (10)   NULL,
    [Event Is Recurrence]     VARCHAR (10)   NULL,
    [Event Recurrence Type] VARCHAR (30)   NULL,
    [Event Is Past]           VARCHAR (30)   NULL,
    [Event Key]             VARCHAR (6)    NULL,
    [Event Approved]          VARCHAR (5)    NULL,
    [Event Rpt Current Ind] VARCHAR (5)    NULL,
    [Event Rpt From Date]     DATETIME       NULL,
    [Txn_Date_Id]             VARCHAR (20)   NULL,
    [Txn_Alt_Date_Id]         VARCHAR (20)   NULL,
    [Create_Date_Id]          VARCHAR (20)   NULL,
    [Fiscal_Date_Id]          VARCHAR (20)   NULL,
    [Rpt_From_Date_Id]        VARCHAR (20)   NULL, 
    CONSTRAINT [PK_GD_Event_Fact] PRIMARY KEY ([Event Fact Id])
);

