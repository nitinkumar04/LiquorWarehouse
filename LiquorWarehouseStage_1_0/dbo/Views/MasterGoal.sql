create view MasterGoal as
SELECT sg.gvp__Account_Segment__c
      ,sg.gvp__Account_Set__c
      ,sg.gvp__Sales_Goal_Plan__c
      ,sg.gvp__Sales_Team_Division__c
      ,sg.gvp__Account_Type__c
      ,sg.gvp__Account__c
      ,sg.gvp__Product_Set__c
      ,sg.gvp__Brand__c
      ,sg.gvp__Label__c
      ,sg.gvp__Size__c
      ,sg.gvp__Item__c
      ,sg.gvp__Competitor__c
      ,sg.gvp__Supplier__c
      ,sg.gvp__Company__c
      ,sg.gvp__Division__c
      ,sg.gvp__Region__c
      ,sg.gvp__Territory__c
      ,sg.gvp__Survey_Bank__c
      ,sg.gvp__Survey_Plan__c
      ,sg.gvp__Survey_Plan_Question__c
      ,sg.gvp__User__c
      ,sg.gvp__Goal_Quantity__c
      ,sg.gvp__Mid_Period_Quantity__c
      ,sg.gvp__Estimate_Quantity__c
      ,sg.gvp__Goal_Transaction_Type__c
      ,sg.gvp__Goal_Key__c
      ,sg.gvp__Goal_Type__c
      ,sg.gvp__Period_Type__c
      ,sg.gvp__Quantity_Type__c
      ,sg.gvp__Start_Date__c
      ,sg.gvp__End_Date__c
      ,rt.ID AS gvp__Account_Premise_Type__c
      ,sg.gvp__Sales_Driver__c
      ,sg.gvp__Weight__c
  	  ,sp.gvp__Goal_Level__c
      ,sg.gvp__Reference_Report_ID__c
  	  ,sp.gvp__Secondary_Attribute__c
      ,CAST(aff.gvp__Object_Id__c + afm1.gvp__Attribute_Id_Offset__c AS decimal(16,0)) as gvp__Secondary_Attribute__OID
      ,sg.gvp__Master_Goal__c
      ,sg.gvp__Master__c
      ,sg.gvp__Objective_Plan__c
      ,sg.gvp__Reported_Result__c
      ,sg.gvp__Status__c
      ,sg.gvp__Achieved__c
      ,sg.gvp__Currency_Value__c
      ,sg.gvp__Minimum_Value__c
      ,sg.gvp__Minimum_Goal_Quantity__c
      ,sg.gvp__Minimum_Quantity_UOM__c
      ,sg.gvp__Adjustment_Comment__c
      ,sg.gvp__Adjustment__c
      ,sg.gvp__Reference_Value__c
      ,sg.gvp__User_Type__c
      ,sg.gvp__Additional_Metrics__c
      ,sg.gvp__Is_Active__c
      ,sg.gvp__Reference__c
      ,sg.gvp__Reported_Result_Object_Id__c
      ,sg.gvp__Goal_Plan_Name__c
      ,sg.gvp__Reference_End_Date__c
      ,sg.gvp__Reference_Start_Date__c
      ,sg.Id
      ,sg.RecordTypeId
      ,sg.gvp__Logging_Enabled__c
  FROM SFIn.gvp__Sales_Goal__c sg
  inner join sfin.gvp__Sales_Goal_Plan__c SP on SP.id = SG.gvp__Sales_Goal_Plan__c
  left outer join sfin.gvp__Analytics_Field_Matrix__mdt afm1 on afm1.gvp__Attribute_Identifier__c = sp.gvp__Secondary_Attribute__c
  left outer join sfin.gvp__Analytics_Field__c aff on afm1.gvp__Attribute_Identifier__c = aff.gvp__Field_Identifier__c
  left outer join sfin.RecordType RT on rt.DeveloperName = SG.gvp__Account_Premise_Type__c and rt.SobjectType = 'Account'
  where sg.gvp__Master__c = 'true'
    and sp.gvp__Is_Active__c = 'true'