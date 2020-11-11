CREATE PROCEDURE [dbo].[DeleteClient] @clientname varchar(100) as
begin
  delete p from ClientParameter p inner join Client c on p.ClientID = c.ClientID where ClientName = @clientname

  delete from client where ClientName = @clientname

end

