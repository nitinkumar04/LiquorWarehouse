CREATE TABLE Trax.[Image]
(
    image_skey                int             not null        identity(1,1),
    sf_image_id               varchar(18)     not null,
    date_sent_to_trax         datetime, 
    scene_skey                int,
    image_uid                 uniqueidentifier  not null,
    store_number              varchar(100)    not null,
    visit_date                date            not null,
    captured_by               varchar(255),
    capture_time              time            not null,
    local_tz_offset           int             not null,
    task_code                 varchar(10)     not null
    CONSTRAINT [PK_Image] PRIMARY KEY (image_skey) 
)
