CREATE PROCEDURE [dbo].[WriteToLoadLog] 
  @pipelinename varchar(100), 
  @snaplogicassetid char(36),
  @ruuid varchar(72),
  @executionstatus varchar(25),
  @starttime char(27), 
  @endtime char(27), 
  @insertrows int, 
  @error varchar(1000),
  @reason varchar(1000),
  @snapname varchar(100),
  @updaterows int = null, 
  @deleterows int = null

AS
begin
  if isnull(@pipelinename, '') <> '' -- @pipeline name comes through as null when validating a pipeline that has errors.  We don't want to store validation records.
  begin
    insert into LoadLog (PipelineName, SnapLogicAssetID, RUUID, ExecutionStatus, StartTime, EndTime, InsertRows, UpdateRows, DeleteRows) values (
      @pipelinename, 
      @snaplogicassetid,
      @ruuid,
      case 
        when isnull(@error, '') = '' then 'Completed'
        when isnull(@error, '') <> '' then 'Error'
        else 'Other'
      end, --ExecutionStatus
      convert(datetime, substring(replace(@starttime, 'T', ' '), 1, 23)), 
      convert(datetime, substring(replace(@starttime, 'T', ' '), 1, 23)), 
      @insertrows, 
      @updaterows, 
      @deleterows)
  end

  if isnull(@error, '') <> '' -- This means there wasn't an error.  This table will store validation errors.  Can be changed later to exclude if it causes confusion.
  begin
    insert into LoadErrorLog (RUUID, PipelineName, SnapName, ErrorDateTime, Error, Reason) values (
      @ruuid,
      @pipelinename,
      @snapname,
      getdate(),
      @error,
      @reason)
  end
end
GO


