CREATE TABLE BFOut.Answer
(
  State_Code                    nvarchar(2),
  House_Desc                    nvarchar(3),
  Premise_Desc                  nvarchar(100),
  Survey_Plan_Seq               varchar(18) not null,
  Survey_Seq                    varchar(18) not null,
  Survey_Question_Seq           varchar(18) not null,
  Survey_Ans_Seq                varchar(18) not null,
  Survey_Status                 nvarchar(30),
  CustID                        varchar(18),
  Salesperson_ID                varchar(18),
  Survey_Ans_Created_Date       date,
  Survey_Answer_Img             nvarchar(255),
  Survey_Answer                 nvarchar(255),
  Survey_Submit_Month           nvarchar(8),
  Srv_Tgt_Ans_Met               INT,
  Incentive_Earned_Points       DECIMAL(4, 1),
  Srv_Inc_Earned_Dollars        decimal(14,4),
    CONSTRAINT [PK_Answer] PRIMARY KEY ([Survey_Plan_Seq], [Survey_Seq], [Survey_Question_Seq], [Survey_Ans_Seq])



)
