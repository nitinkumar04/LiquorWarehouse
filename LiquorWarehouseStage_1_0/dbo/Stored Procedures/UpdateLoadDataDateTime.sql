CREATE PROCEDURE [dbo].[UpdateLoadDataDateTime] @LookForNewTables bit = 0 as
begin
  -- Updates the LoadDataDateTime table with the date range for the next load, based off of the time of the last successful load.  
  --  It does not change the TruncateTable boolean in the table, only the date


  -- If @LookForNewTables is true, then query the LoadLog for tables that exist there, but not in the LoadDataDateTime table
  if @LookForNewTables = 1
    insert into LoadDataDateTime
      select distinct ll.PipelineName, ll.SnapLogicAssetID, '1/1/1900', '1/1/2030', 0, 0
      from LoadLog ll
        left outer join LoadDataDateTime lddt on lddt.PipelineName = ll.PipelineName
      where lddt.PipelineName is null 

  -- Update DataDateTime with the StartTime of the previous load that completed successfully
  update lddt set
    StartDataDateTime = case when TruncateTableDefault = 0 then ll.StartTime else '1/1/1900' end,
    TruncateTableNextLoad = TruncateTableDefault
  from LoadDataDateTime lddt
    inner join (
      select PipelineName, SnapLogicAssetID, max(StartTime) as StartTime 
      from LoadLog 
      where ExecutionStatus = 'Completed' 
      group by PipelineName, SnapLogicAssetID) ll on ll.PipelineName = lddt.PipelineName

end
