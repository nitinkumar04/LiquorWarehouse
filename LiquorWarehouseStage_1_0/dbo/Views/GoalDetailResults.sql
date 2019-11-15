CREATE VIEW GoalDetailResults
AS
SELECT rr.[gvp__Sales_Goal_Plan__c]
	  ,sgp.gvp__Goal_Plan_Description__c
      ,[PrimaryAttributeValue]
	  ,sg.Name
	  ,sg.Id as gvp__Sales_Goal__c
	  ,rr.SecondaryAttributeValue as gvp__Related_Field_Id__c
	  ,CASE 
	     when rr.SecondaryAttributeName = 'Acct Univ Dim Id' THEN 'gvp__Account__c'
	   ELSE 'N/A' END AS gvp__Related_Field_API_Name__c
      ,cast([MetricValue] as decimal(14,4)) as gvp__Reported_Result__c
	  ,'Reported' as gvp__Detail_Type__c
  FROM [GoodDataSalesGoalRawResults] rr
  join sfin.gvp__Sales_Goal_Plan__c sgp on sgp.id = rr.gvp__Sales_Goal_Plan__c
  join [SFIn].[User] ur on ur.id = rr.PrimaryAttributeValue
  join sfin.gvp__Sales_Goal__c sg on sg.gvp__Sales_Goal_Plan__c = rr.gvp__Sales_Goal_Plan__c and sg.gvp__User__c = ur.id
  where SecondaryAttributeName != ''
GO