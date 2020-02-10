-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

/*
exec RebuildIndexes 'warehouse',1,0
*/

CREATE PROCEDURE [dbo].[RebuildIndexes] 
  @Database varchar(100),
  @RebuildPKsFlag bit = 0,
  @RebuildOnline bit = 0

AS
BEGIN
	SET NOCOUNT ON;

  declare @sql varchar(1000)
  declare @counter int
  declare @tablerows int
  declare @currenttable varchar(100)
  declare @currentindex varchar(200)
  declare @currentschema varchar(20)

  create table #table (
    id int identity(1,1),
    schemaname varchar(20),
    tablename varchar(100),
    indexname varchar(200),
    indextype int
    )

  set @sql = '
  insert into #table
    select s.name as schemaname, t.name as tablename, i.name as indexname, i.type
    from ' + @Database + '.sys.tables t 
      inner join ' + @Database + '.sys.indexes i on t.object_id = i.object_id 
      inner join ' + @Database + '.sys.schemas s on t.schema_id = s.schema_id '
    
  if (@RebuildPKsFlag = 1) set @sql = @sql + '
    where i.type_desc <> ''HEAP'' '
  else set @sql = @sql + '
    where i.type_desc not in (''HEAP'',''CLUSTERED'') '

  set @sql = @sql + '
    order by i.type, t.name, i.name'


  exec (@sql)
--  print (@sql)
  
  set @counter = 1
  set @tablerows = (select COUNT(1) from #table)
  
  while @counter <= @tablerows
  begin
    set @currentindex = (select indexname from #table where id = @counter)
    set @currenttable = (select tablename from #table where id = @counter)
    set @currentschema = (select schemaname from #table where id = @counter)
    print 'Rebuilding ' + @currentindex + ' on ' + @database + '.' + @currentschema + '.' + @currenttable
    
    set @sql = '
    alter index ' + @currentindex + ' on ' + @database + '.' + @currentschema + '.' + @currenttable + ' rebuild'

    if @RebuildOnline = 1 set @sql = @sql + '
      with (maxdop = 6, sort_in_tempdb = on, online = on)
      '
    else set @sql = @sql + '
      with (maxdop = 6, sort_in_tempdb = on, online = off)
      '
    
    exec (@sql)
--    print (@sql)  

    set @counter = @counter + 1

  end

END



GO

