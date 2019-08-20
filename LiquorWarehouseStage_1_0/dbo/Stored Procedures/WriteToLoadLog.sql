CREATE PROCEDURE [dbo].[WriteToLoadLog] 
  @pipelinename varchar(100), 
  @snaplogicassetid char(36),
  @ruuid varchar(72),
  @executionstatus varchar(25),
  @starttime char(27), 
  @endtime char(27), 
  @insertrows int = 0, 
  @updaterows int = 0, 
  @deleterows int = 0
AS
begin
  insert into LoadLog (PipelineName, SnapLogicAssetID, RUUID, ExecutionStatus, StartTime, EndTime, InsertRows, UpdateRows, DeleteRows) values (
    @pipelinename, 
    @SnapLogicAssetID,
    @ruuid,
    @executionstatus,
    convert(datetime, substring(replace(@starttime, 'T', ' '), 1, 23)), 
    convert(datetime, substring(replace(@starttime, 'T', ' '), 1, 23)), 
    @insertrows, 
    @updaterows, 
    @deleterows)
end
