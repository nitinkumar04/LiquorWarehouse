CREATE TABLE [GVP].[ContentDocumentLink] (														
    [Id]                                        VARCHAR (35)   NOT NULL,				        
	[LinkedEntityId]							VARCHAR (35)  NULL,                             
	[ContentDocumentId]							VARCHAR (35)  NULL,  
	[IsDeleted]               	                VARCHAR (10) NULL,  
    [SystemModstamp]                            DATETIME NULL, 
	[ShareType]               	                VARCHAR (10) NULL,	
	[Visibility]               	                VARCHAR (30) NULL,	
	[LinkedEntityType]               	        NVARCHAR (100) NULL,		
	 CONSTRAINT [PK_ContentDocumentLink] PRIMARY KEY ([Id])                             
);                                                                                 
GO