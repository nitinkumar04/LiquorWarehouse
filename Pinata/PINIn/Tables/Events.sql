CREATE TABLE [PINIn].[Events]
(
	RowNumber                     int identity(1,1) not null,
	event_id                      varchar(100)      null,
	event_date                    date              null,
	event_start_time              time              null,
	location_name                 nvarchar(255)     null,
	unique_client_location_id     varchar(100)      null,
	location_address              nvarchar(255)     null,
	product_name                  nvarchar(255)     null,
	product_label                 varchar (100)     null,
	report_question_id            varchar(100)      null,
	report_question               nvarchar(255)     null,
	answer_type                   varchar(100)      null,
	answer1                       nvarchar(255)     null,
	answer2                       nvarchar(255)     null,
	answer3                       nvarchar(255)     null,
	answer4                       nvarchar(255)     null,
	answer5                       nvarchar(255)     null,
	answer6                       nvarchar(255)     null,
	CONSTRAINT [PK_Events] PRIMARY KEY ([RowNumber])
)
