CREATE TABLE [dbo].[ClientParameter] (
    [ClientID]         INT           NOT NULL,
    [ParameterID]      INT           NOT NULL,
    [EnvironmentID]    INT           NULL,
    [ParameterValue]   VARCHAR (100) NULL,
    [CreateDate]       DATETIME      CONSTRAINT [DF_ClientParameter_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate] DATETIME      CONSTRAINT [DF_ClientParameter_LastModifiedDate] DEFAULT (getdate()) NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1
);

