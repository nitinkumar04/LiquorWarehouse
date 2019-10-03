if exists (select 1 from tempdb.sys.objects where name like '#tables%')
  drop table #tables

if exists (select 1 from tempdb.sys.objects where name like '#columns%')
  drop table #columns

declare @KettleDataSchema varchar(010)
declare @SLDataSchema varchar(10)
set @KettleDataSchema = 'GDOut'
set @SLDataSchema = 'GDOutTest'

declare @sql varchar(8000)
declare @selectclause varchar(max)
declare @fromclause varchar(200)
declare @table varchar(100)
declare @whereclause varchar(max)

-- Temp table to store the results
create table #tables (
  id              int identity(1,1),
  tablename       varchar(100),
  tablerowcount   int,
  errorrowcount   int
)

create table #columns (
  id              int identity(1,1),
  columnname      varchar(100),
  selectclause    varchar(200),
  whereclause     varchar(250)
)

-- Get the tables in the database
insert into #tables
  select t.name, null, null from sys.tables t inner join sys.schemas s on t.schema_id = s.schema_id where s.name = @SLDataSchema and t.name = 'gd_person_dim'

declare @i int
declare @numtables int
set @i = 1
set @numtables = (select count(1) from #tables)

while @i <= @numtables
begin

  -- Clear out the #columns table
  truncate table #columns

  -- Get the next table to process
  set @table = (select tablename from #tables where id = @i)

  -- Load into the #columns table, format the select and where columns
  insert into #columns
    select 
      c.name, 
      'test.[' + c.name + '], prod.[' + c.name + '] as [prod_' + c.name + '], ', -- select clause for the column
      'isnull(test.[' + c.name + '], '''') <> isnull(prod.[' + c.name + '], '''') or ' -- where clause for the column
    from sys.columns c 
      inner join sys.tables t on t.object_id = c.object_id 
      inner join sys.schemas s on s.schema_id = t.schema_id
    where t.name = @table
      and s.name = @SLDataSchema
      --and c.name in ('Person Dim Name', 'Created Date','Modified Date')

  -- Create the select clause and remove the final comma
  select @selectclause = coalesce(@selectclause, '') + selectclause
  from #columns

  set @selectclause = substring(@selectclause, 1, len(@selectclause) - 1)
  
  -- Create the from clause
  set @fromclause = @KettleDataSchema + '.' + @table + ' test full outer join ' 
    + @SLDataSchema + '.' + @table + ' prod on test.[' + replace(substring(@table, 4, len(@table)), '_', ' ') + ' ID] = prod.[' + replace(substring(@table, 4, len(@table)), '_', ' ') + ' ID]'

  -- Create the where clause and remove ' OR ' from the last column returned, ignore URL's for now because they return false positives for some reason
  select @whereclause = coalesce(@whereclause, '') + whereclause
  from #columns
  where columnname not like '%URL%'

  set @whereclause = SUBSTRING(@whereclause, 1, len(@whereclause) - 3)

  -- Debugging
  --print @selectclause
  --print @fromclause
  --print @whereclause

  -- Query the results, top query writes the counts to the TestResult table, bottom writes out the error rows themselves
  exec ('insert into ' + @SLDataSchema + '.TestResult select ''' + @table + ''', count(1) from ' + @fromclause + ' where ' + @whereclause) 
  --exec ('select ''' + @table + ''' as [table], ' + @selectclause + ' from ' + @fromclause + ' where ' + @whereclause)


  set @i = @i + 1
end