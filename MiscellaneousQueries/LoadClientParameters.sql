declare @clientname varchar(100)
set @clientname = 'gerardbertrand@greatvines.com'

exec AddClient @clientname
exec SetClientParameterValue @clientname, 'Salesforce_Base_URL', 'gerardbertrand@greatvines.com'


