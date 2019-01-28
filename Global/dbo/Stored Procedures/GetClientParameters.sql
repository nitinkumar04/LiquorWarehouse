CREATE procedure [dbo].[GetClientParameters] @clientname varchar(100), @rowsorcolumns varchar(7) as
begin
  -- Check for sql injection
  if charindex(';', @clientname, 0) > 0
    or charindex(';', @rowsorcolumns, 0) > 0
  return(1);

  -- Snaplogic errors if nocount is off
  set nocount on

  -- Parameter error handling
  if not exists(select ClientID from Client where ClientName = @clientname)
    return(1);
  if @rowsorcolumns <> 'rows' and @rowsorcolumns <> 'columns'
    return(1);

  -- Create working table with separate default and client specific values
  create table #Parameters (
    ParameterID int,
    ParameterName varchar(100),
    DefaultValue varchar(100),
    ClientSpecificValue varchar(100))

  -- Create results table with coalesced default and client specific values
  create table #ParametersCoalesced (
    ParameterName varchar(100),
    ParameterValue varchar(200))

  -- Get all the parameters associated with the 'Default' client
  insert into #Parameters
    select p.ParameterID, p.ParameterName, cp.ParameterValue, null
    from Client c
      inner join ClientParameter cp on c.ClientID = cp.ClientID
      inner join Parameter p on cp.ParameterID = p.ParameterID
    where c.ClientName = 'Default'

  -- Get all the values associated with the requested client
  update tp set
    tp.ClientSpecificValue = cp.ParameterValue
  from #Parameters tp
    inner join ClientParameter cp on tp.ParameterID = cp.ParameterID
    inner join Client c on c.ClientID = cp.ClientID
  where c.ClientName = @clientname

  -- Coalesce the values, this needs to be in a separate table in order to simplify the pivot below
  insert into #ParametersCoalesced
    select ParameterName, coalesce(ClientSpecificValue, DefaultValue) as ParameterValue from #Parameters

  -- Return the values as either rows or columns
  if @rowsorcolumns = 'rows'
    select ParameterName, ParameterValue from #ParametersCoalesced

  -- Pivot the results so that each parameter name is a column with one row of data
  else
  begin
  
    declare @sql varchar(2000)
    declare @pivotcolumns varchar(2000)

    -- Get the column names
    select @pivotcolumns = coalesce(@pivotcolumns + ', ','') + ParameterName
    from (select distinct ParameterName from #ParametersCoalesced) as parameternames
    --print @pivotcolumns

    -- Create the query to return the parameters
    set @sql = 'select ' + @pivotcolumns + ' from #ParametersCoalesced pivot (max(ParameterValue) for ParameterName in (' + @pivotcolumns + ')) as p'
    print (@sql)
    exec (@sql)
  end

  drop table #Parameters
  drop table #ParametersCoalesced
end
