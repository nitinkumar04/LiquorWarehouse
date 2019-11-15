create table GoodDataSalesGoalRawResults (
  ID                      int identity(1,1) primary key,
  gvp__Sales_Goal_Plan__c varchar(18)       not null,
  PrimaryAttributeName    varchar(100)      not null,
  PrimaryAttributeValue   varchar(18)       not null,
  SecondaryAttributeName  varchar(100)      null,
  SecondaryAttributeValue varchar(18)       null,
  MetricName              varchar(100)      not null,
  MetricValue             varchar(100)      not null, 
    [CreateDate] DATETIME NOT NULL DEFAULT getdate()
  )