create table GoodDataSalesGoalPlanField (
  ID                      int identity(1,1) primary key,
  gvp__Sales_Goal_Plan__c varchar(18),
  FieldName               varchar(100),
  FieldType               varchar(10),
  FieldValue              varchar(200)
  )
