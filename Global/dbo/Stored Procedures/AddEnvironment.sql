CREATE PROCEDURE [dbo].[AddEnvironment] @environmentname varchar(100) as
begin
  -- Check for sql injection
  if charindex(';', @environmentname, 0) > 0
    return(1);

  -- Exit if environment already exists
  else if exists(select EnvironmentID from Environment where EnvironmentName = @environmentname)
    return(1);

  else 
    begin
      insert into Environment values (@environmentname)
    end

end

