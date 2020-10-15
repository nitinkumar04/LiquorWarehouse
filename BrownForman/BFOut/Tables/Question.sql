CREATE TABLE BFOut.Question
(
  State_Code                    nvarchar(2),
  House_Desc                    nvarchar(3),
  Premise_Desc                  nvarchar(100),
  Survey_Plan_Seq               varchar(18) not null,
  Survey_Question_Seq           varchar(18) not null,
  Survey_Plan_Name              nvarchar(255),
  Survey_Question_Name          nvarchar(255),
  Survey_Bank_Type              nvarchar(100),
  Survey_Bank_Sales_Driver      nvarchar(255),
  Survey_Question_Has_Target    nvarchar(255),
  Survey_Question_Target        nvarchar(255),
  Survey_Quest_Product          nvarchar(100),
  Survey_Question_Size          nvarchar(20),
  Survey_Ques_Group_Name        nvarchar(255),
  Brand_ID                      varchar(10),
  Label_ID                      varchar(10),
  ProdID                        varchar(18),
  Product_ID                    varchar(10), 
    CONSTRAINT [PK_Question] PRIMARY KEY ([Survey_Plan_Seq], [Survey_Question_Seq])

)
