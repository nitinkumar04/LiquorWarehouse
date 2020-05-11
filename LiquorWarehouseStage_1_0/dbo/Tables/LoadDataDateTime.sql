CREATE TABLE [dbo].[LoadDataDateTime]
(
  PipelineName               varchar(100) not null,
  StartDataDateTime          datetime    not null,
  EndDataDateTime            datetime    not null    default '1/1/2030',
  TruncateTableNextLoad      bit         not null    default 0,
  TruncateTableDefault       BIT         NOT NULL    DEFAULT 0, 
    [FullLoadDefault] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_LoadDataDateTime] PRIMARY KEY ([PipelineName])
)
