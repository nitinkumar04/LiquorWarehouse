--UpdateTAble 'DimRetailer'
CREATE procedure [dbo].[UpdateTable] @tablename varchar(25) as
begin
  --declare @tablename varchar(25)
  --set @tablename = 'DimRetailer'
  declare @stagedatabasename varchar(50)
  set @stagedatabasename = (select substring(db_name(), 1, charindex('_1', db_name()) - 1) + 'Stage')
  print db_name()
  declare @setstatement varchar(7800)
  declare @sql varchar(8000)
  declare @idfield varchar(35)
  declare @skeyfield varchar(35)

  set @idfield = replace(@tablename, 'Dim', '') + 'ID'
  set @skeyfield = 'LB' + replace(@tablename, 'Dim', '') + 'SKey'

  select 'lb.' + c.name + ' = lbs.' + c.name  as columnupdate into #temp
  from sys.columns c 
    inner join sys.tables t on t.object_id = c.object_id 
  where t.name = @tablename
    and c.name not in (@idfield, @skeyfield, 'LBCreateDate', 'LBModifiedDate')

  insert into #temp values ('lb.LBModifiedDate = getdate()')

  select @setstatement = coalesce(@setstatement + ',
','') + columnupdate 
  from (select columnupdate from #temp) as setstatement

  --print @setstatement

  set @sql = 'update lb set 
    ' + @setstatement + ' 
    from ' + @tablename + ' lb 
      inner join ' + @stagedatabasename + '..Temp' + @tablename + ' lbs on lb.' + @idfield + ' = lbs.' + @idfield + ' and lbs.LBSourceID = lb.LBSourceID'

  --print @sql
  exec (@sql)

  drop table #temp

end
