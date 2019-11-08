create table GoodDataElementID (
  ID            int identity(1,1) primary key,
  ProjectID     varchar(32),
  FieldName     varchar(100),
  GDObjectID    int,
  ElementValue  varchar(200),
  GDURI         varchar(100)
  )