﻿CREATE TABLE GVW.AccountCallSequenceFact(									
    ID           VARCHAR(18)      NOT NULL,                           
	Name         varchar(250)  NULL,                                  
	CreatedDate                   char(10)      NULL,                 
	ModifiedDate                  char(10)      NULL,                 
	TxnDate                       char(10)      NULL,                 
	FiscalDate                    char(10)      NULL,                 
	Date    			          char(10)      NULL,                 
	LocalDate   			      char   (10)   NULL,                 
	StatusComplete			  varchar(10)   NULL,                     
	CreateDateID                 varchar(10)   NULL,                  
	TxnDateID                    varchar(10)   NULL,                  
	StartDate 				DATE		 NULL,                        
    EndDate				    DATE 		NULL,   
	StartDateID                    varchar(10)   NULL,
	EndDateID                    varchar(10)   NULL,
	FiscalDateID                 varchar(10)   NULL,                  
	AccountCallSequenceDimID			VARCHAR(18) NULL,                     
	AccountCallID					VARCHAR(18) NULL,                 
	GVWCreatedDate       datetime    default getdate() NOT NULL,      
    GVWLastModifiedDate  datetime    default getdate() NOT NULL,      
    GVWSourceID  INT default (-1),                                    
    GVWDeleted BIT NULL DEFAULT '0',
	GVWHash VARCHAR(32) NOT NULL DEFAULT 0, 
	CONSTRAINT PK_AccountCallSequenceFact PRIMARY KEY (ID)
);
