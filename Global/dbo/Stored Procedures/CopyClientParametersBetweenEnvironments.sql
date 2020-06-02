CREATE PROCEDURE [dbo].[CopyClientParametersBetweenEnvironments] 
  @clientname varchar(100),
  @fromenvironment varchar(100), 
  @toenvironment varchar(100)
as
begin
 -- Check for sql injection
  if charindex(';', @fromenvironment, 0) > 0 or charindex(';', @toenvironment, 0) > 0 or charindex(';', @clientname, 0) > 0
    return(1);

  else 
    begin
      -- Get the ID values for the parameter variables
      declare @clientid int 
      declare @defaultclientid int
      declare @fromenvironmentid int
      declare @toenvironmentid int

      set @clientid = (select clientid from client where ClientName = @clientname)
      set @defaultclientid = (select clientid from client where ClientName = 'default')
      set @fromenvironmentid = (select environmentid from Environment where EnvironmentName = @fromenvironment)
      set @toenvironmentid = (select environmentid from Environment where EnvironmentName = @toenvironment)


      -- Set the 'Active' value to false for the previous values in @toenvironment
      update ClientParameter set Active = 0
      where ClientID = @clientid
        and EnvironmentID = @toenvironmentid
        and Active = 1

      -- Insert the new records, keeping the previous 'createdate' value, if available
      insert into ClientParameter (ClientID, EnvironmentID, ParameterID, ParameterValue, CreateDate, LastModifiedDate, Active)
        select @clientid, 
          @toenvironmentid, 
          cp.ParameterID, 
          cp.ParameterValue, 
          isnull(cp1.CreateDate, getdate()), 
          getdate(), 
          1 
        from ClientParameter cp 
        -- Self join to get the create date, if available
          left outer join ClientParameter cp1 on cp1.ClientID = cp.ClientID and cp1.ParameterID = cp.ParameterID
        where cp.ClientID = @clientid
          and cp.EnvironmentID = @fromenvironmentid
          and cp1.Active = 1

      -- Now clean up any records that are equal to the default values
      delete cp 
      from ClientParameter cp
        inner join ClientParameter cp1 on cp1.ParameterID = cp.ParameterID and cp1.ParameterValue = cp.ParameterValue
      where cp.ClientID = @clientid
        and cp1.ClientID = @defaultclientid

    end
end
