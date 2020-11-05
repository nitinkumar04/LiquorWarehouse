create procedure [dbo].[GetSingleParameterValueForAllClients] @Environment varchar(10), @ParameterName varchar(100)
as
begin

    select distinct c.ClientName, cp.ParameterValue
    from Parameter p
      inner join ClientParameter cp on cp.ParameterID = p.ParameterID
      inner join Client c on c.ClientID = cp.ClientID
      inner join Environment e on e.EnvironmentID = cp.EnvironmentID
    where
      p.ParameterName = @ParameterName
      and e.EnvironmentName = @Environment
      and cp.Active = 1

end


