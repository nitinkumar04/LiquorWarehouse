-- createrowhash 'sfin', 'account', 'id'
CREATE procedure [dbo].[CreateRowHash] 
  @schemaname varchar(10), 
  @tablename varchar(50), 
  @IDColumnName varchar(25) = 'Id', 
  @SourceName varchar(25) = 'Salesforce' as
begin

  declare @columns varchar(7700)
  declare @stringcolumns varchar(4500)
  declare @nonstringcolumns varchar(3200)
  declare @sql varchar(7900)
  declare @sourceID varchar(2)

  -- Get the sourceID
  select @sourceID = convert(varchar(2), ID) from [Source] where [Name] = @SourceName 

  -- Get the columns that are strings (non-strings must be converted to string)
  select @stringcolumns = coalesce(@stringcolumns + ', ','') + name 
  from (
		select c.name 
		from sys.columns c 
			inner join sys.tables t on t.object_id = c.object_id 
			inner join sys.schemas s on s.schema_id = t.schema_id 
		where t.name = @tablename and c.user_type_id in (167, 231, 175) and s.name = @schemaname and c.name not in (@IDColumnName)
		) as name

	-- Add the isnull function to each column (can't do this above because with the isnull the above query is larger than 4000 characters)
  if len(@stringcolumns) > 0
	set @stringcolumns = 'isnull(' + replace(@stringcolumns, ', ', ',''|'') + isnull(') + ',''|'')'
  --print @stringcolumns

  -- Get the non-string columns, which must be converted
  select @nonstringcolumns = coalesce(@nonstringcolumns + ', ','') + name 
  from (
		select c.name 
		from sys.columns c 
			inner join sys.tables t on t.object_id = c.object_id 
			inner join sys.schemas s on s.schema_id = t.schema_id
		where t.name = @tablename and c.user_type_id not in (167, 231, 175) and s.name = @schemaname and c.name not in (@IDColumnName)
		) as name
  
	-- Add the isnull function to each column (can't do this above because with the isnull the above query is larger than 4000 characters)
  if len(@nonstringcolumns) > 0
		set @nonstringcolumns = ' + isnull(convert(varchar,' + replace(@nonstringcolumns, ', ', '),''|'') + isnull(convert(varchar,') + '),''|'')'
  --print @nonstringcolumns

  -- combine the variables
  set @columns = @stringcolumns + @nonstringcolumns
  --print @columns

	-- Return the table (ID, RowHash)
  set @sql = 'select ' + @IDColumnname + ', ' + @sourceID + ' as SourceID, HASHBYTES(''MD5'', ' + @columns +') as RowHash from ' + @schemaname + '.' + @tablename + ' order by ' + @IDColumnName

  --print @sql 
  exec (@sql)

end
