CREATE TABLE Trax.[Session]
(
  session_skey            int               identity(1,1), 
  survey_id               varchar(18)       not null,
  date_sent_to_trax       datetime,
  client_session_id       uniqueidentifier  not null,
  store_number            varchar(100)      not null,
  visit_date              date              not null,
  local_tz_offset         int,
  session_start_time      time              not null,
  session_end_time        time,
  email_address           varchar(255), 
  CONSTRAINT [PK_Session] PRIMARY KEY ([session_skey])

)
