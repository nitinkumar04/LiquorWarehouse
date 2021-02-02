CREATE TABLE temp.GVPgvp__RAD__cDeletes
(
  [Id] VARCHAR(255), 
	gvp__Account__c char(18) NOT null,
	gvp__Date__c date NOT null,
	gvp__Distributor__c char(18) NOT null,
	gvp__Item__c char(18) NOT null,
	gvp__Dist_Inv_Number__c varchar(50) NOT null DEFAULT '',
	gvp__Dist_Item_Number__c varchar(30) NOT null DEFAULT '',
CONSTRAINT [PK_GVPgvp__RAD__cDeletes] PRIMARY KEY ([gvp__Item__c], [gvp__Distributor__c], [gvp__Account__c], [gvp__Dist_Inv_Number__c], [gvp__Date__c], gvp__Dist_Item_Number__c, Id) 
)
