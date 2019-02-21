create procedure CreateDefaultValues @tablename varchar(100) as
begin
  declare @numDefaults int
  declare @sql nvarchar(2000)
  declare @skeyname varchar(25) 

  -- Set skey column name
  set @skeyname = 'LW' + replace(@tablename, 'Dim', '') + 'SKey'

  -- Query for the number of default values that exist in the table
  set @sql = N'select @numDefaultsOut = count(1) from ' + @tablename + ' where ' + @skeyname + ' < 0'
  execute sp_executesql @sql, N'@numDefaultsOut int output', @numDefaultsOut = @numDefaults OUTPUT

  -- If there's only 1 value, then delete it so we can reload both default values
  if @numDefaults = 1
  begin
    set @sql = 'delete from ' + @tablename + ' where ' + @skeyname + ' < 0'
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
      select c.name, c.max_length, c.system_type_id from sys.columns c inner join sys.tables t on c.object_id = t.object_id where t.name = @tablename and c.is_nullable = 0 

    /*
    system_type_id  datatype
        56              int
        231             nvarchar
        61              datetime
        175             char
        167             varchar
        3               date
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
        when (system_type_id = 231 or system_type_id = 167) and size > 6 then '''Invalid''' -- long nvarchar or varchar
        when (system_type_id = 231 or system_type_id = 167) and size <= 6 then '''?''' -- short nvarchar or varchar
        when (system_type_id = 61 or system_type_id = 3) then '''1/1/1899''' -- datetime and date
        when system_type_id = 175 and columnname like '%id' then '''-2''' -- char that aren't SF Id's
        when system_type_id = 175 and size > 6 then '''Invalid''' -- long char
        when system_type_id = 175 and size <= 6 then '''?'''
      end
      from #columns
      order by id

    --print @values

    -- Execute the query for 'Invalid' values
    set @sql = 'set identity_insert ' + @tablename + ' on
      insert into ' + @tablename + '(' + @columnnames + ')
        values (' + @values + ')'

    --print @sql
    exec (@sql)

    -- Set the values portion of the insert query for 'No Data' values
    set @values = null
    select @values = coalesce(@values + ', ', '') + 
      case 
        when system_type_id = 56 then '-1' -- int
        when (system_type_id = 231 or system_type_id = 167) and size > 6 then '''No Data''' -- long nvarchar or varchar
        when (system_type_id = 231 or system_type_id = 167) and size <= 6 then '''-''' -- short nvarchar or varchar
        when (system_type_id = 61 or system_type_id = 3) then '''1/1/1900''' -- datetime and date
        when system_type_id = 175 and columnname like '%id' then '''-1''' -- char that aren't SF Id's
        when system_type_id = 175 and size > 6 then '''No Data''' -- long char
        when system_type_id = 175 and size <= 6 then '''-'''
      end
      from #columns
      order by id

    -- Execute the query for the 'No Data' values
    set @sql = 'set identity_insert ' + @tablename + ' on
      insert into ' + @tablename + ' (' + @columnnames + ')
        values (' + @values + ')'

    --print @sql
    exec (@sql)
    
  end
end
