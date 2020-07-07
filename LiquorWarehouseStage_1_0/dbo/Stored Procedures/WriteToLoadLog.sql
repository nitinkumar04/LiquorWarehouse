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
  -- Consolidate the statuses into Completed, Error, and Other
  declare @ConsolidatedExecutionStatus varchar(25)
  set @ConsolidatedExecutionStatus = 
    case 
      when isnull(@error, '') = '' then 'Completed'
      when isnull(@error, '') <> '' then 'Error'
      else 'Other'
    end
  
  /* Load log */

  if @snaplogicassetid <> 'Validation' -- we don't want to log validations, only executions
  begin
    -- If a record already exists for that ruuid, then update it rather than write a new record (this happens when the error pipeline and log results snap both call the logging SP
    if @ConsolidatedExecutionStatus in ('Error') and exists (select 1 from LoadLog where ruuid = @ruuid and ExecutionStatus <> 'Error')
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

  /* Load Error Log */

  if @ConsolidatedExecutionStatus = 'Error'
  begin
    -- Set @ruuid = 'validation' if snaplogicassetid = 'validation' to highlight that it was a validation and not an execution.  There isn't a valid ruuid for validations, anyway.  Not sure where the value is coming from
    if @snaplogicassetid = 'Validation' set @ruuid = 'Validation'
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


