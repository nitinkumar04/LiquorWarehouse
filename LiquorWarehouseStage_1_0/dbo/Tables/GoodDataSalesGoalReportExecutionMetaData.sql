CREATE TABLE [dbo].[GoodDataSalesGoalReportExecutionMetaData]
(
  Id                          INT               NOT NULL    identity(1,1)   PRIMARY KEY,
  [gvp__Sales_Goal_Plan__c]   char(18)          not null,
  ReportURI                   varchar(100)      not null,
  ResultsURI                  varchar(100)      not null, 
    [CreateDate] DATETIME NOT NULL DEFAULT getdate()
)
