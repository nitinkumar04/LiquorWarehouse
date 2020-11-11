create procedure [dbo].[GetSingleParameterValueForAllClients] @Environment varchar(10), @ParameterName varchar(100)
as
begin
  -- Declare variables
  -- The parameters default value
  declare @defaultvalue varchar(100)

  -- Table variable to hold the data
  declare @parametervalues table (
    clientid int,
    clientname varchar(100),
    defaultvalue varchar(100),
    clientvalue varchar(100)
    )

    -- Get the default value for the parameter.  Environment can either be null for the default (as it is as of 20201106) or a specific environment (as in a change request in the queue)
    set @defaultvalue = (
      select distinct cp.ParameterValue 
      from ClientParameter cp 
        inner join Client c on c.ClientID = cp.ClientID 
        inner join Parameter p on p.ParameterID = cp.ParameterID
        left outer join Environment e on cp.EnvironmentID = e.EnvironmentID
      where isnull(e.EnvironmentName, @environment) = @Environment
        and p.ParameterName = @ParameterName
        and c.ClientName = 'default'
        )

    -- Get the list of clients and populate the default value
    insert into @parametervalues
      select ClientID, ClientName, @defaultvalue, null from Client

    -- Update the client's specific parameter value, if it exists
    update pv set pv.clientvalue = cp.ParameterValue
      from @parametervalues pv
        inner join Client c on c.ClientID = pv.ClientID
        inner join ClientParameter cp on cp.ClientID = pv.clientid
        inner join Parameter p on cp.ParameterID = p.ParameterID
        inner join Environment e on e.EnvironmentID = cp.EnvironmentID
      where
        p.ParameterName = @ParameterName
        and e.EnvironmentName = @Environment
        and cp.Active = 1
 
    -- Return the results
    select 
      clientname, 
      coalesce(clientvalue, defaultvalue)
    from @parametervalues

end
