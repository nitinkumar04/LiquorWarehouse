CREATE TABLE BFOut.[SurveyPlan]
(
  Survey_Plan_Name        nvarchar(255),
  Survey_Plan_Seq         VARCHAR(18) NOT NULL,
  Survey_Plan_Channel     nvarchar(255),
  Survey_Incentive_Type   nvarchar(255),
  Survey_Plan_Start_Date  date,
  Survey_Plan_End_Date    date, 
    CONSTRAINT [PK_SurveyPlan] PRIMARY KEY ([Survey_Plan_Seq])
)
