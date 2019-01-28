CREATE TABLE [dbo].[Parameter] (
    [ParameterID]          INT           IDENTITY (1, 1) NOT NULL,
    [ParameterName]        VARCHAR (100) NOT NULL,
    [ParameterDataType]    VARCHAR (10)  CONSTRAINT [DF_Parameter_ParameterDataType] DEFAULT ('String') NOT NULL,
    [ParameterDescription] VARCHAR (200) NULL,
    [CreateDate]           DATETIME      CONSTRAINT [DF_Parameter_CreateDate] DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]     DATETIME      CONSTRAINT [DF_Parameter_LastModifiedDate] DEFAULT (getdate()) NOT NULL
);

