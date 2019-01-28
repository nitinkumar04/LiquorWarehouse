CREATE procedure AddClient @clientname varchar(100) as
begin
  -- Check for sql injection
  if charindex(';', @clientname, 0) > 0
    return(1);

  -- Exit if client already exists
  else if exists(select ClientID from Client where ClientName = @clientname)
    return(1);

  else 
    begin
      insert into Client values (@clientname)
    end
end
