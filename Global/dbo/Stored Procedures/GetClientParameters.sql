Create procedure [dbo].[GetClientParameters] @clientname varchar(100), @environmentname varchar(100), @rowsorcolumns varchar(7) as
begin
  -- Check for sql injection
  if charindex(';', @clientname, 0) > 0
    or charindex(';', @rowsorcolumns, 0) > 0
    or charindex(';', @environmentname, 0) > 0
  return(1);

  -- Snaplogic errors if nocount is off
  set nocount on

  -- Parameter error handling
  if not exists(select ClientID from Client where ClientName = @clientname)
    return(1);
  if not exists(select EnvironmentID from Environment where EnvironmentName =@environmentname or @environmentname ='All' or @environmentname ='Default')
   return(1);
  if @rowsorcolumns <> 'rows' and @rowsorcolumns <> 'columns'
    return(1);

  if @environmentname ='Default'
  begin
  -- Create working table with separate default and client specific values
    create table #ParametersDefault (
    EnvironmentName varchar(100),
    ParameterID int,
    ParameterName varchar(100),
    DefaultValue varchar(100),
    ClientSpecificValue varchar(100))

  -- Get all the parameters associated with the 'Default' client
    insert into #ParametersDefault
    select e.EnvironmentName, p.ParameterID, p.ParameterName, cp.ParameterValue, null
    from Client c
      inner join ClientParameter cp on c.ClientID = cp.ClientID
      inner join Parameter p on cp.ParameterID = p.ParameterID
	  left join Environment e on e.EnvironmentID = cp.EnvironmentID
    where c.ClientName = 'Default'

  -- Return the values as either rows or columns
	if @rowsorcolumns = 'rows'
	select 'Default' as EnvironmentName, ParameterName, DefaultValue as ParameterValue
		   from #ParametersDefault
	else
  begin
  
    declare @sqldefault varchar(2000)
    declare @pivotcolumnsdefault varchar(2000)

  -- Get the column names
    select @pivotcolumnsdefault = coalesce(@pivotcolumnsdefault + ', ','') + ParameterName
    from (select distinct ParameterName from #ParametersDefault) as parameternames
    --print @pivotcolumns

  -- Create the query to return the parameters
    set @sqldefault = 'select ' + @pivotcolumnsdefault + ' from #ParametersDefault pivot (max(DefaultValue) for ParameterName in (' + @pivotcolumnsdefault + ')) as p'
    print (@sqldefault)
    exec (@sqldefault)
  end

drop table #ParametersDefault

end

 else if @environmentname ='All'
  -- Create working table with separate default and client specific values for Dev
  begin
  create table #Parameters1 (
    EnvironmentName varchar(100),
    ParameterID int,
    ParameterName varchar(100),
    DefaultValue varchar(100),
    ClientSpecificValue varchar(100))

  -- Create results table with coalesced default and client specific values for Dev
  create table #ParametersCoalesced1 (
    EnvironmentName varchar(100),
    ParameterName varchar(100),
    ParameterValue varchar(200))

  -- Get all the parameters associated with the 'Default' client
  insert into #Parameters1
    select e.EnvironmentName, p.ParameterID, p.ParameterName, cp.ParameterValue, null
    from Client c
      inner join ClientParameter cp on c.ClientID = cp.ClientID
      inner join Parameter p on cp.ParameterID = p.ParameterID
	  left join Environment e on e.EnvironmentID = cp.EnvironmentID
    where c.ClientName = 'Default'

  -- Get all the values associated with the requested client for Dev Environment
  update tp set
    tp.ClientSpecificValue = cp.ParameterValue
  from #Parameters1 tp
    inner join ClientParameter cp on tp.ParameterID = cp.ParameterID
    inner join Client c on c.ClientID = cp.ClientID
    inner join Environment e on cp.EnvironmentID = e.EnvironmentID
  where c.ClientName = @clientname
    and e.EnvironmentName = 'Dev'

  -- Coalesce the values, this needs to be in a separate table in order to simplify the pivot below
  insert into #ParametersCoalesced1
    select 'Dev' as EnvironmentName, ParameterName, coalesce(ClientSpecificValue, DefaultValue) as ParameterValue from #Parameters1

  -- Create working table with separate default and client specific values for Test
  create table #Parameters2 (
    EnvironmentName varchar(100),
    ParameterID int,
    ParameterName varchar(100),
    DefaultValue varchar(100),
    ClientSpecificValue varchar(100))

  -- Create results table with coalesced default and client specific values for Test
  create table #ParametersCoalesced2 (
    EnvironmentName varchar(100),
    ParameterName varchar(100),
    ParameterValue varchar(200))

  -- Get all the parameters associated with the 'Default' client for Test
  insert into #Parameters2
    select e.EnvironmentName, p.ParameterID, p.ParameterName, cp.ParameterValue, null
    from Client c
      inner join ClientParameter cp on c.ClientID = cp.ClientID
      inner join Parameter p on cp.ParameterID = p.ParameterID
	  left join Environment e on e.EnvironmentID = cp.EnvironmentID
    where c.ClientName = 'Default'

  -- Get all the values associated with the requested client for Test
  update tp set
    tp.ClientSpecificValue = cp.ParameterValue
  from #Parameters2 tp
    inner join ClientParameter cp on tp.ParameterID = cp.ParameterID
    inner join Client c on c.ClientID = cp.ClientID
    inner join Environment e on cp.EnvironmentID = e.EnvironmentID
  where c.ClientName = @clientname
    and e.EnvironmentName = 'Test'

  -- Coalesce the values, this needs to be in a separate table in order to simplify the pivot below for Test
  insert into #ParametersCoalesced2
    select  'Test' as EnvironmentName, ParameterName, coalesce(ClientSpecificValue, DefaultValue) as ParameterValue from #Parameters2

  -- Create working table with separate default and client specific values for Prod
  create table #Parameters3 (
    EnvironmentName varchar(100),
    ParameterID int,
    ParameterName varchar(100),
    DefaultValue varchar(100),
    ClientSpecificValue varchar(100))

  -- Create results table with coalesced default and client specific values for Prod
  create table #ParametersCoalesced3 (
    EnvironmentName varchar(100),
    ParameterName varchar(100),
    ParameterValue varchar(200))

  -- Get all the parameters associated with the 'Default' client for Prod
  insert into #Parameters3
    select e.EnvironmentName, p.ParameterID, p.ParameterName, cp.ParameterValue, null
    from Client c
      inner join ClientParameter cp on c.ClientID = cp.ClientID
      inner join Parameter p on cp.ParameterID = p.ParameterID
	  left join Environment e on e.EnvironmentID = cp.EnvironmentID
    where c.ClientName = 'Default'

  -- Get all the values associated with the requested client for Prod
  update tp set
    tp.ClientSpecificValue = cp.ParameterValue
  from #Parameters3 tp
    inner join ClientParameter cp on tp.ParameterID = cp.ParameterID
    inner join Client c on c.ClientID = cp.ClientID
    inner join Environment e on cp.EnvironmentID = e.EnvironmentID
  where c.ClientName = @clientname
    and e.EnvironmentName = 'Prod'

  -- Coalesce the values, this needs to be in a separate table in order to simplify the pivot below for Prod
  insert into #ParametersCoalesced3
    select  'Prod' as EnvironmentName, ParameterName, coalesce(ClientSpecificValue, DefaultValue) as ParameterValue from #Parameters2


  -- Return the values as either rows or columns
  if @rowsorcolumns = 'rows'
    select  pc1.ParameterName, 'Dev' as EnvironmentName, pc1.ParameterValue, 
		   'Test' as EnvironmentName, pc2.ParameterValue,
		   'Prod' as EnvironmentName, pc3.ParameterValue 
		   from #ParametersCoalesced1 pc1 join #ParametersCoalesced2 pc2 on pc1.ParameterName=pc2.ParameterName
		                                  join #ParametersCoalesced2 pc3 on pc2.ParameterName=pc3.ParameterName


  -- Pivot the results so that each parameter name is a column with one row of data
  else
  begin
  
    declare @sql1 varchar(2000)
    declare @pivotcolumns1 varchar(2000)
	declare @sql2 varchar(2000)
    declare @pivotcolumns2 varchar(2000)
	declare @sql3 varchar(2000)
    declare @pivotcolumns3 varchar(2000)

  -- Get the column names
    select @pivotcolumns1 = coalesce(@pivotcolumns1 + ', ','') + ParameterName
    from (select distinct ParameterName from #ParametersCoalesced1) as parameternames1
	select @pivotcolumns2 = coalesce(@pivotcolumns2 + ', ','') + ParameterName
    from (select distinct ParameterName from #ParametersCoalesced2) as parameternames2
	select @pivotcolumns3 = coalesce(@pivotcolumns3 + ', ','') + ParameterName
    from (select distinct ParameterName from #ParametersCoalesced3) as parameternames3
    --print @pivotcolumns

  -- Create the query to return the parameters
    set @sql1 = 'select ' + @pivotcolumns1 + ' from #ParametersCoalesced1 pivot (max(ParameterValue) for ParameterName in (' + @pivotcolumns1 + ')) as p1'
    set @sql2 = 'select ' + @pivotcolumns2 + ' from #ParametersCoalesced2 pivot (max(ParameterValue) for ParameterName in (' + @pivotcolumns2 + ')) as p2'
    set @sql3 = 'select ' + @pivotcolumns3 + ' from #ParametersCoalesced3 pivot (max(ParameterValue) for ParameterName in (' + @pivotcolumns3 + ')) as p3'

    print (@sql1)
    exec (@sql1)
	print (@sql2)
    exec (@sql2)
	print (@sql3)
    exec (@sql3)

  end

  drop table #Parameters1
  drop table #ParametersCoalesced1
  drop table #Parameters2
  drop table #ParametersCoalesced2
  drop table #Parameters3
  drop table #ParametersCoalesced3
  
  end

 else if exists(select EnvironmentID from Environment where EnvironmentName =@environmentname)
 begin
  -- Create working table with separate default and client specific values
  create table #Parameters (
    EnvironmentName varchar(100),
    ParameterID int,
    ParameterName varchar(100),
    DefaultValue varchar(100),
    ClientSpecificValue varchar(100))

  -- Create results table with coalesced default and client specific values
  create table #ParametersCoalesced (
    EnvironmentName varchar(100),
    ParameterName varchar(100),
    ParameterValue varchar(200))

  -- Get all the parameters associated with the 'Default' client
  insert into #Parameters
    select @environmentname as EnvironmentName, p.ParameterID, p.ParameterName, cp.ParameterValue, null
    from Client c
      inner join ClientParameter cp on c.ClientID = cp.ClientID
      inner join Parameter p on cp.ParameterID = p.ParameterID
	  left join Environment e on e.EnvironmentID = cp.EnvironmentID
    where c.ClientName = 'Default'

  -- Get all the values associated with the requested client
  update tp set
    tp.ClientSpecificValue = cp.ParameterValue
  from #Parameters tp
    inner join ClientParameter cp on tp.ParameterID = cp.ParameterID
    inner join Client c on c.ClientID = cp.ClientID
    inner join Environment e on cp.EnvironmentID = e.EnvironmentID
  where c.ClientName = @clientname
    and e.EnvironmentName = @environmentname
  -- Coalesce the values, this needs to be in a separate table in order to simplify the pivot below
  insert into #ParametersCoalesced
    select EnvironmentName, ParameterName, coalesce(ClientSpecificValue, DefaultValue) as ParameterValue from #Parameters

  -- Return the values as either rows or columns
  if @rowsorcolumns = 'rows'
    select EnvironmentName, ParameterName, ParameterValue from #ParametersCoalesced order by ParameterName

  -- Pivot the results so that each parameter name is a column with one row of data
  else
  begin
  
    declare @sql varchar(2000)
    declare @pivotcolumns varchar(2000)

    -- Get the column names
    select @pivotcolumns =  coalesce(@pivotcolumns + ', ','')  + ParameterName 
    from (select distinct ParameterName from #ParametersCoalesced) as parameternames
    print @pivotcolumns

    -- Create the query to return the parameters
    set @sql = 'select '  + @pivotcolumns + ' from #ParametersCoalesced pivot (max(ParameterValue) for ParameterName in (' + @pivotcolumns + ')) as p'
    print (@sql)
    exec (@sql)

end
  drop table #Parameters
  drop table #ParametersCoalesced
end

end
