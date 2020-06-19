CREATE procedure [dbo].[AlertToSlack] @message_txt varchar(1000)
as
begin
declare @slackpostscript nvarchar(max)
/* The following code snippet below is included in the script to disable python's new certification verification off, remove from the script if no longer needed
import os, ssl
if (not os.environ.get('PYTHONHTTPSVERIFY', '') and
getattr(ssl, '_create_unverified_context', None)):
	ssl._create_default_https_context = ssl._create_unverified_context
*/
set @slackpostscript =
  N'
import http.client
import mimetypes
import os, ssl
if (not os.environ.get(''PYTHONHTTPSVERIFY'', '''') and
getattr(ssl, ''_create_unverified_context'', None)):
	ssl._create_default_https_context = ssl._create_unverified_context
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