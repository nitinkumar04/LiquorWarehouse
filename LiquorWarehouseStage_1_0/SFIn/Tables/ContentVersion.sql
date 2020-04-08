CREATE TABLE [SFIn].[ContentVersion] (														
    [Id]                                        char (18)   NOT NULL,				        
	[ContentDocumentId]							CHAR (18) NULL,                             
	[RecordTypeId]								CHAR (18) NULL,                             
	[IsLatest]               	                VARCHAR (10) NULL,	                        
	[ContentUrl]								NVARCHAR (250) NULL,                        
	[VersionNumber]						 		VARCHAR (10) NULL,		                    
	[Title]         						    VARCHAR (255) NULL,	                        
	[Description]                               NVARCHAR (500)  NULL,                       
	[ReasonForChange]         					VARCHAR (30) NULL,	                        
	[SharingOption]         				    VARCHAR (5) NULL,	                        
	[PathOnClient]         					    VARCHAR (200) NULL,                          
	[RatingCount]						 		VARCHAR (10) NULL,                                   
	[IsDeleted]               	                VARCHAR (10) NULL,                          
    [ContentModifiedDate]                       DATETIME NULL,                              
	[ContentModifiedById]						CHAR (18) NULL,                             
	[Language]         						    VARCHAR (10) NULL,	                        
	[PositiveRatingCount]				 		VARCHAR (10) NULL,                                   
	[NegativeRatingCount]				 		VARCHAR (10) NULL,                                   
	[FeaturedContentBoost]				 		VARCHAR (10) NULL,                                   
    [FeaturedContentDate]                       VARCHAR (10) NULL,	                                
	[OwnerId]									CHAR (18) NULL,                             
	[CreatedById]								CHAR (18) NULL,                             
    [CreatedDate]                               DATETIME NOT NULL, 	                        
	[LastModifiedById]							CHAR (18) NULL,                             
    [LastModifiedDate]                          DATETIME  NULL,                             
    [SystemModstamp]                            DATETIME NULL,                              
	[TagCsv]                                    NVARCHAR (100)  NULL,  	                    
	[FileType]         						    VARCHAR (30) NULL,                          
	[PublishStatus]         				    VARCHAR (5) NULL,		                    
	[ContentSize]						 		VARCHAR (10) NULL,                                   
	[FileExtension]         				    VARCHAR (10) NULL,                          
	[FirstPublishLocationId]					CHAR (18) NULL,                             
	[Origin]         						    VARCHAR (5) NULL,                           
	[ContentLocation]         				    VARCHAR (5) NULL,	                        
	[TextPreview]                               NVARCHAR (100)  NULL,                       
	[ExternalDocumentInfo1]                     NVARCHAR (100)  NULL,                       
	[ExternalDocumentInfo2]                     NVARCHAR (100)  NULL, 	                    
	[ExternalDataSourceId]						CHAR (18) NULL,  	                        
	[Checksum]         						    VARCHAR (32) NULL, 	                        
	[IsMajorVersion]         				    VARCHAR (5) NULL,                           
    [Territory__c]                        		CHAR (18) NULL,                             
	[gvp__Brand__c]                      	    CHAR (18) NULL,                             
    [gvp__Label__c]                      	    CHAR (18) NULL,		                        
	[gvp__Product_Name__c]                      NVARCHAR (255)  NULL,                       
	[gvp__Type__c]         					    VARCHAR (200) NULL,                          
	[gvp__Objective_Creator_Template__c]        VARCHAR (30) NULL,                          
	[gvp__Geolocation__Latitude__s]     	    VARCHAR (30) NULL,                          
 	[gvp__Geolocation__Longitude__s]     	    VARCHAR (30) NULL,                          
	[gvp__Geolocation__c]         			    VARCHAR (30) NULL,                          
	[gvp__Location__c]         				    VARCHAR (30) NULL,                          
	[gvp__Sticky__c]         				    VARCHAR (10) NULL,                          
CONSTRAINT [PK_ContentVersion] PRIMARY KEY CLUSTERED

(

[Id] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY];

GO 