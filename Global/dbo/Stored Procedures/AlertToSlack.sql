create procedure [dbo].[AlertToSlack] @message_txt varchar(1000)
as
begin
declare @slackpostscript nvarchar(max)
set @slackpostscript =
  N'
import http.client
import mimetypes
conn = http.client.HTTPSConnection("hooks.slack.com")
payload = "{\"text\": \"' + @message_txt + '\"}"
headers = {
  ''Content-Type'': ''application/json'',
}
conn.request("POST", "/services/T02FQMG89/BRA17B0JZ/CStKwrdskT8W3f60hpkm6aq8", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))'

  exec sp_execute_external_script @language =N'Python', @script= @slackpostscript

end
GO

