CREATE TABLE [dbo].[Client] (
    [ClientID]   INT           IDENTITY (1, 1) NOT NULL,
    [ClientName] VARCHAR (100) NOT NULL, 
    CONSTRAINT [PK_Client] PRIMARY KEY ([ClientID])
);

