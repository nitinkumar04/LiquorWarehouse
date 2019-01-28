create procedure [dbo].[GetClientList] as
begin
  select ClientID, ClientName from Client
  return 0
end