create procedure [dbo].[UpdateTable] @tablename varchar(25) as
begin
  declare @setstatement varchar(7800)
  declare @sql varchar(8000)
  declare @idfield varchar(35)
  declare @skeyfield varchar(35)
  declare @i int

  set @idfield = 'ID'
  set @skeyfield = 'GVW' + replace(@tablename, 'Dim', '') + 'SKey'

  /* Create the 'set' clause of the update statement */
  
  -- Create a row for each column that sets it equal to the temp table version of itself
  select 'g.' + c.name + '=t.' + c.name as columnupdate into #temp
  from sys.columns c 
    inner join sys.tables t on t.object_id = c.object_id 
  where t.name = @tablename
    and c.name not in (@idfield, @skeyfield, 'GVWCreateDate', 'GVWLastModifiedDate', 'SourceID')

  -- Add the modified date to the table
  insert into #temp values ('g.GVWLastModifiedDate=getdate()')

  -- Loop through the list of columns 100 at a time and update them.  Unfortunately we have to do this in pieces because of the number of columns in some tables
  while (select count(1) from #temp) > 0
  begin
    -- combine the individual rows into one string
    select @setstatement = coalesce(@setstatement + ',','') + columnupdate 
    from (select top 100 columnupdate from #temp) as setstatement

    --print @setstatement

    -- Create the update statement
    set @sql = 'update g set ' + @setstatement + ' 
      from gvw.' + @tablename + ' g 
        inner join dbo.Temp' + @tablename + ' t on g.' + @idfield + ' = t.' + @idfield + ' and g.GVWSourceID=t.GVWSourceID'

    --print @sql
    exec (@sql)

    -- Delete the columns that we just updated from the temp table so we don't update them again, reset the setstatement variable
    delete from #temp where columnupdate in (select top 100 columnupdate from #temp)
    set @setstatement = null

  end

  drop table #temp

end


