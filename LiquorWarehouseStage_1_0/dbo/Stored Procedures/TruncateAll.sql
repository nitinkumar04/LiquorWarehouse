create procedure TruncateAll @schema varchar(5) as
begin
  if @schema = 'dbo' 
    return(1)
  else
  begin
    create table #tablestotruncate (ID int identity(1,1), tablename varchar(50))
    insert into #tablestotruncate 
      select t.name from sys.tables t inner join sys.schemas s on t.schema_id = s.schema_id where s.name = @schema

    declare @sql varchar(100)
    declare @counter int
    declare @numtables int
    set @counter = 1
    set @numtables = (select count(1) from #tablestotruncate)
    while (@counter <= @numtables)
    begin
      set @sql = 'truncate table ' + @schema + '.[' + (select tablename from #tablestotruncate where ID = @counter) + ']'
      --print @sql
      exec (@sql)

      set @counter = @counter + 1
    end

    drop table #tablestotruncate
  end
end