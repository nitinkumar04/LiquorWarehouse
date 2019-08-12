create procedure SeedStageData as
begin
  insert into Source values ('LiquorWarehouse')
  insert into Source values ('Salesforce')
/****** Inserts data into Stage Tables from Global Database for data that is not sourced from SalesForce ******/
  insert into [State](StateSN, StateLN, StateCountry)
    select Global..[State].StateSN, Global..[State].StateLN, Global..[State].StateCountry from Global..[State]
  insert into Country(CountrySN, CountryLN)
    select Global..Country.CountrySN, Global..Country.CountryLN from Global..Country
end