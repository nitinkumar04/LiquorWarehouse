CREATE TABLE Trax.[Scene]
(
  scene_skey              int               identity(1,1), 
  session_skey            int               not null,
  survey_plan_question_id varchar(18)       not null,
  date_sent_to_trax       datetime,
  client_scene_id         uniqueidentifier  not null,
  store_number            varchar(100)      not null,
  visit_date              date              not null,
  task_code               varchar(10)       not null,
  store_area              varchar(255),
  email_address           varchar(255), 
  aisle_number            varchar(10),
  CONSTRAINT [PK_Scene] PRIMARY KEY ([scene_skey])
)
