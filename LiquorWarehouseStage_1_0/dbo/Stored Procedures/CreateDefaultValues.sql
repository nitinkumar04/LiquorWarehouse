create procedure CreateDefaultValues @schemaname varchar(10), @tablename varchar(100) as
begin
  declare @numDefaults int
  declare @sql nvarchar(2000)
  declare @skeyname varchar(26) 

  -- Set skey column name
  set @skeyname = @schemaname + replace(@tablename, 'Dim', '') + 'SKey'

  -- Query for the number of default values that exist in the table
  set @sql = N'select @numDefaultsOut = count(1) from ' + @schemaname + '.' + @tablename + ' where ' + @skeyname + ' < 0'
  execute sp_executesql @sql, N'@numDefaultsOut int output', @numDefaultsOut = @numDefaults OUTPUT

  -- If there's only 1 value, then delete it so we can reload both default values
  if @numDefaults = 1
  begin
    set @sql = 'delete from ' + @schemaname + '.' + @tablename + ' where ' + @skeyname + ' < 0'
    exec (@sql)
  end

  -- Load the default values
  if @numDefaults <> 2
  begin

    declare @columnnames varchar(1000)
    declare @values varchar(1000)

    -- Create the temp table to hold the fields and their data types
    create table #columns (
      id int identity(1,1),
      columnname varchar(50),
      size int,
      system_type_id int)

    -- Populate the temp table
    insert into #columns (columnname, size, system_type_id)
      select c.name, c.max_length, c.system_type_id 
      from sys.columns c 
        inner join sys.tables t on c.object_id = t.object_id 
        inner join sys.schemas s on t.schema_id = s.schema_id
      where t.name = @tablename 
        and s.name = @schemaname
        and (c.is_nullable = 0 or c.name like '%Description%' or c.name like '%Name%')

    /*
    system_type_id  datatype
        56              int
        231             nvarchar
        61              datetime
        175             char
        167             varchar
        40              date
        173             binary
        104             bit
    */

    -- Create the column name portion of the insert query
    select @columnnames = coalesce(@columnnames + ', ', '') + columnname
      from #columns
      order by id

    --print @columnnames

    -- Set the values portion of the insert query for 'Invalid' values
    select @values = coalesce(@values + ', ', '') + 
      case 
        when system_type_id = 56 then '-2' -- int
        when system_type_id in (167, 231, 175) and columnname like '%id' then '''-2''' -- char/varchar/nvarchar that aren't SF Id's
        when system_type_id in (167, 231, 175) and size > 6 then '''Invalid''' -- long nvarchar, varchar, or char
        when system_type_id in (167, 231, 175) and size <= 6 then '''?''' -- short nvarchar, varchar, or char
        when columnname in ('GVWCreatedDate', 'GVWModifiedDate') then '''' + convert(varchar, getdate()) + '''' -- our system create and modify dates
        when (system_type_id = 61 or system_type_id = 40) then '''1/1/1899''' -- datetime and date
				when system_type_id = 173 then '0x0000000000000000'
        when system_type_id = 104 then '0'
      end
      from #columns
      order by id

    --print @values

    -- Execute the query for 'Invalid' values
    set @sql = 'set identity_insert ' + @schemaname + '.' + @tablename + ' on
      insert into ' + @schemaname + '.' + @tablename + '(' + @columnnames + ')
        values (' + @values + ')'

    --print @sql
    exec (@sql)

    -- Set the values portion of the insert query for 'No Data' values
    set @values = null
    select @values = coalesce(@values + ', ', '') + 
      case 
        when system_type_id = 56 then '-1' -- int
        when system_type_id in (167, 231, 175) and columnname like '%id' then '''-1''' -- char/varchar/nvarchar that aren't SF Id's
        when system_type_id in (167, 231, 175) and size > 6 then '''Unknown''' -- long nvarchar, varchar, or char
        when system_type_id in (167, 231, 175) and size <= 6 then '''-''' -- short nvarchar, varchar, or char
        when columnname in ('GVWCreatedDate', 'GVWModifiedDate') then '''' + convert(varchar, getdate()) + '''' -- our system create and modify dates
        when (system_type_id = 61 or system_type_id = 40) then '''1/1/1900''' -- datetime and date
				when system_type_id = 173 then '0x0000000000000000'
        when system_type_id = 104 then '0'
      end
      from #columns
      order by id

    -- Execute the query for the 'No Data' values
    set @sql = 'set identity_insert ' + @schemaname + '.' + @tablename + ' on
      insert into ' + @schemaname + '.' + @tablename + ' (' + @columnnames + ')
        values (' + @values + ')'

    --print @sql
    exec (@sql)
    
  end
end
