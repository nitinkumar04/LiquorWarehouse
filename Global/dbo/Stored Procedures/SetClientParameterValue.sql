CREATE procedure SetClientParameterValue @clientname varchar(100), @parametername varchar(100), @parametervalue varchar(100) as
begin
  declare @clientid int
  declare @parameterid int
  declare @ParameterNameUnderscores varchar(100)

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