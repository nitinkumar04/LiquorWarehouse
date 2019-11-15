CREATE VIEW [GoalUserResults]
AS
SELECT rr.[gvp__Sales_Goal_Plan__c]
	  ,sg.Id as gvp__Sales_Goal__c
      ,sum(cast([MetricValue] as decimal(14,4))) as gvp__Reported_Result__c
  FROM [GoodDataSalesGoalRawResults] rr
  
  join sfin.gvp__Sales_Goal_Plan__c sgp on sgp.id = rr.gvp__Sales_Goal_Plan__c
  join [SFIn].[User] ur on ur.id = rr.PrimaryAttributeValue
  join sfin.gvp__Sales_Goal__c sg on sg.gvp__Sales_Goal_Plan__c = rr.gvp__Sales_Goal_Plan__c and sg.gvp__User__c = ur.id
  group by sg.Id, rr.[gvp__Sales_Goal_Plan__c]
GO