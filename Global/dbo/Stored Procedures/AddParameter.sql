CREATE procedure AddParameter @parametername varchar(100), @description varchar(200), @datatype varchar(10), @defaultvalue varchar(100) as
begin
  declare @DefaultClientID int
  declare @NewParameterID int
  declare @numParametersWithName int
  declare @ParameterNameUnderscores varchar(100)
      
  -- Check for sql injection
  if charindex(';', @parametername, 0) > 0 
    or charindex(';', @defaultvalue, 0) > 0
    or charindex(';', @datatype, 0) > 0 
    or charindex(';',@defaultvalue, 0) > 0
      return(1);

  -- Replace Spaces with underscores
  set @ParameterNameUnderscores = replace(@ParameterName, ' ', '_')

  -- Exit if the parameter already exists
  if exists(select ParameterID from Parameter where ParameterName = @ParameterNameUnderscores)
    return(1);

  -- Exit if the parameter isn't an accepted datatype
  if @datatype not in ('int', 'decimal', 'money', 'char', 'varchar', 'nchar', 'nvarchar', 'date', 'datetime')
    return(1);

  else
    begin
      -- Get the Client ID
      set @DefaultClientID = (select ClientID from Client where ClientName = 'Default')

      -- Load the parameter information
      begin transaction
        insert into Parameter (ParameterName, ParameterDataType, ParameterDescription, CreateDate, LastModifiedDate) 
          values (@ParameterNameUnderscores, @datatype, @description, getdate(), getdate())
        
        -- Set the Default value for the parameter
        exec SetClientParameterValue 'Default', 'Default', @ParameterNameUnderscores, @defaultvalue
      commit;
    end
end