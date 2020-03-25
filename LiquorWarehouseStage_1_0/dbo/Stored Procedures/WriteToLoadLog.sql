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
  @deleterows int = null,
  @unchangedrows int = null

AS
begin
  -- @pipeline name comes through as null when validating a pipeline that has errors.  We don't want to store validation records.  
  if isnull(@pipelinename, '') <> '' 

  -- Consolidate the statuses into Completed, Error, and Other
  declare @ConsolidatedExecutionStatus varchar(25)
  set @ConsolidatedExecutionStatus = 
    case 
      when isnull(@error, '') = '' then 'Completed'
      when isnull(@error, '') = 'Completed with Log Error' then 'Completed with Log Error'
      when isnull(@error, '') <> '' then 'Error'
      else 'Other'
    end
  
  begin
    -- If a record already exists for that ruuid, then update it rather than write a new record (this can happen if the error pipeline takes longer to run than the parent pipeine)
    if @ConsolidatedExecutionStatus in ('Error', 'Completed with Log Error') and exists (select 1 from LoadLog where ruuid = @ruuid and ExecutionStatus <> 'Error')
      update LoadLog set ExecutionStatus = @ConsolidatedExecutionStatus where RUUID = @ruuid

    else
    insert into LoadLog (PipelineName, SnapLogicAssetID, RUUID, ExecutionStatus, StartTime, EndTime, InsertRows, UpdateRows, DeleteRows, UnchangedRows) values (
      @pipelinename, 
      @snaplogicassetid,
      @ruuid,
      @ConsolidatedExecutionStatus,
      convert(datetime, substring(replace(@starttime, 'T', ' '), 1, 23)), 
      convert(datetime, substring(replace(@endtime, 'T', ' '), 1, 23)), 
      @insertrows, 
      @updaterows, 
      @deleterows,
      @unchangedrows)
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


