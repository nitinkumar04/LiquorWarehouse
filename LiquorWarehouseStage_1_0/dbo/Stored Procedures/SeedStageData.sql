create procedure SeedStageData as
begin
  insert into Source values ('LiquorWarehouse')
  insert into Source values ('Salesforce')
/****** Inserts data into Stage Tables from Global Database for data that is not sourced from SalesForce ******/
  insert into [State](StateSN, StateLN, StateCountry)
    select Global..[State].StateSN, Global..[State].StateLN, Global..[State].StateCountry from Global..[State]
  insert into Country(CountrySN, CountryLN)
    select Global..Country.CountrySN, Global..Country.CountryLN from Global..Country
  insert into AccountType(Acct_Type)
    select Global..AccountType.Acct_Type from Global..AccountType
  insert into TypeData(Type_Id,Type_Name,Type_Plural,Type_Group,Type_Subtype,Type_Order)
    select Global..TypeData.Type_Id, Global..TypeData.Type_Name, Global..TypeData.Type_Plural, Global..TypeData.Type_Group, Global..TypeData.Type_Subtype, Global..TypeData.Type_Order from Global..TypeData
  insert into FIPS_County([State], State_ANSI, County_ANSI, County_Name, ANSI_CI)
    select Global..FIPS_County.[State], Global..FIPS_County.State_ANSI, Global..FIPS_County.County_ANSI, Global..FIPS_County.County_Name, Global..FIPS_County.ANSI_CI from Global..FIPS_County
  insert into FIPS_Zip(ZCTA5, [STATE], COUNTY, GEOID)
    select Global..FIPS_Zip.ZCTA5, Global..FIPS_Zip.[STATE], Global..FIPS_Zip.COUNTY, Global..FIPS_Zip.GEOID from Global..FIPS_Zip
end