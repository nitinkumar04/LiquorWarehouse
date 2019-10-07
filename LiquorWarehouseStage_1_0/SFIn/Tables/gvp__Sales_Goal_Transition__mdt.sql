CREATE TABLE [SFIN].[gvp__Sales_Goal_Transition__mdt]
(
	Id CHAR(18) NOT NULL, 
    DeveloperName NVARCHAR(100) NULL, 
    gvp__Goal_Transaction_Type__c NVARCHAR(10) NULL, 
    gvp__Goal_Type__c NVARCHAR(40) NULL, 
    Label NVARCHAR(100) NULL, 
    Language NVARCHAR(10) NULL, 
    MasterLabel NVARCHAR(100) NULL, 
    NamespacePrefix NVARCHAR(10) NULL, 
    QualifiedApiName NVARCHAR(100) NULL,
	CONSTRAINT [PK_gvp__Sales_Goal_Transition__mdt] PRIMARY KEY ([Id])
)
