CREATE procedure SetClientParameterValue @clientname varchar(100), @parametername varchar(100), @parametervalue varchar(100) as
begin
  declare @clientid int
  declare @parameterid int
  declare @ParameterNameUnderscores varchar(100)
  declare @ParameterDataType varchar(100)
  declare @isnumeric int
  declare @isdate int

  -- Check for sql injection
  if charindex(';', @clientname, 0) > 0
    or charindex(';', @parametername, 0) > 0
    or charindex(';', @parametervalue, 0) > 0
  return(1);

  -- Replace Spaces with underscores
  set @ParameterNameUnderscores = replace(@ParameterName, ' ', '_')
     
  -- Exit if parameter name doesn't exist
  if not exists(select ParameterID from Parameter where ParameterName = @ParameterNameUnderscores)
    return(1);

  -- Exit if client doesn't exist
  else if not exists(select ClientID from Client where ClientName = @clientname)
    return(1);

  else
    begin
      /* Now that we know that the parameter exists, exit if parameter value doesn't match the ParameterDataType */
      -- Determine datatype of parametervalue argument
      set @isnumeric = (select isnumeric(@parametervalue))
      set @isdate = (select isdate(@parametervalue))
      
      -- Get the dataype of the parameter
      set @ParameterDataType = (select ParameterDataType from Parameter where ParameterName = @ParameterNameUnderscores)
      
      -- If the value doesn't match the datatype then exit
      if (@ParameterDataType like '%date%' and @isdate = 0) or (@ParameterDataType in ('int', 'decimal', 'money') and @isnumeric = 0)
        return(1);

      /* End check parameter value datatype */

      -- Get the client and parameter ids
      set @clientid = (select ClientID from Client where ClientName = @clientname)
      set @parameterid = (select ParameterID from Parameter where ParameterName = @ParameterNameUnderscores)

      -- If the client/parameter pair exists then update it
      if exists (select ParameterID from ClientParameter where ClientID = @clientid and ParameterID = @parameterid)
        update ClientParameter set ParameterValue = @parametervalue, LastModifiedDate = getdate() 
          where ClientID = @clientid and ParameterID = @parameterid

      -- Otherwise insert the client/parameter pair and value
      else
        insert into ClientParameter (ClientID, ParameterID, ParameterValue, CreateDate, LastModifiedDate) 
          values (@clientid, @parameterid, @parametervalue, getdate(), getdate())
    
    end
end