create procedure SeedStageData as
begin
/****** Inserts data into Stage Tables from Global Database for data that is not sourced from SalesForce ******/

  -- Insert into the Source Tables 
  insert into Source values ('LiquorWarehouse')
  insert into Source values ('Salesforce')

  -- Geo Data
  insert into [State](StateSN, StateLN, StateCountry)
    select StateSN, StateLN, StateCountry from Global..[State]
  insert into Country(CountrySN, CountryLN)
    select CountrySN, CountryLN from Global..Country
  insert into FIPS_County([State], State_ANSI, County_ANSI, County_Name, ANSI_CI)
    select [State], State_ANSI, County_ANSI, County_Name, ANSI_CI from Global..FIPS_County
  insert into FIPS_Zip(ZCTA5, [STATE], COUNTY, GEOID)
    select top 1 with ties ZCTA5, [STATE], COUNTY, GEOID from Global..FIPS_Zip
	order by row_number() over (partition by ZCTA5 order by cast(POPPT as int) Desc)

  -- Type Data
  insert into AccountType(Acct_Type)
    select Acct_Type from Global..AccountType
  insert into TypeData(Type_Id,Type_Name,Type_Plural,Type_Group,Type_Subtype,Type_Order)
    select Type_Id, Type_Name, Type_Plural, Type_Group, Type_Subtype, Type_Order from Global..TypeData


end