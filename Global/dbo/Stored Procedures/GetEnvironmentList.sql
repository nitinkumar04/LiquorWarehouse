create procedure [dbo].[GetEnvironmentList] as
begin
  select EnvironmentID, EnvironmentName from Environment
  return 0
end