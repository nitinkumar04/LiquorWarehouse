CREATE TABLE [dbo].[LoadLog]
(
  LoadLogID         int           identity(1,1)     not null,
  PipelineName      varchar(100)  not null,
  SnapLogicAssetID  char(36)      not null,
  RUUID             varchar(72)   not null,
  ExecutionStatus   varchar(25)   not null,
  StartTime         datetime      not null,
  EndTime           datetime      null,
  Duration          as DateDiff(second, StartTime, EndTime),
  InsertRows        int           null,
  UpdateRows        int           null,
  DeleteRows        int           null, 
    [UnchangedRows] INT NULL, 
    CONSTRAINT [PK_LoadLog] PRIMARY KEY ([LoadLogID])
)
