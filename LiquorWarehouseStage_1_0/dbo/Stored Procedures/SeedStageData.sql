create procedure SeedStageData as
begin
/****** Inserts data into Stage Tables from Global Database for data that is not sourced from SalesForce ******/

  -- Insert into the Source Tables 
  truncate table Source
  insert into Source values ('LiquorWarehouse')
  insert into Source values ('Salesforce')

  -- Geo Data
  truncate table [State]
  insert into [State](StateSN, StateLN, StateCountry)
    select StateSN, StateLN, StateCountry from Global..[State]

  truncate table Country
  insert into Country(CountrySN, CountryLN)
    select CountrySN, CountryLN from Global..Country

  truncate table FIPS_County
  insert into FIPS_County([State], State_ANSI, County_ANSI, County_Name, ANSI_CI)
    select [State], State_ANSI, County_ANSI, County_Name, ANSI_CI from Global..FIPS_County

  truncate table FIPS_Zip
  insert into FIPS_Zip(ZCTA5, [STATE], COUNTY, GEOID)
    select top 1 with ties ZCTA5, [STATE], COUNTY, GEOID from Global..FIPS_Zip
	order by row_number() over (partition by ZCTA5 order by cast(POPPT as int) Desc)

  -- Type Data
  truncate table AccountType
  insert into AccountType(Acct_Type)
    select Acct_Type from Global..AccountType

  truncate table TypeData
  insert into TypeData(Type_Id,Type_Name,Type_Plural,Type_Group,Type_Subtype,Type_Order)
    select Type_Id, Type_Name, Type_Plural, Type_Group, Type_Subtype, Type_Order from Global..TypeData

  -- Currency
  truncate table Currency
  insert into Currency(Currency_Dim_Id, Currency_ISO_Code, Currency_Conversion_Rate, Currency_Decimal_Places, Currency_Is_Active, Currency_Is_Corporate, Currency_Corporate_ISO_Code)
    select Currency_Dim_Id, Currency_ISO_Code, Currency_Conversion_Rate, Currency_Decimal_Places, Currency_Is_Active, Currency_Is_Corporate, Currency_Corporate_ISO_Code from Global..Currency

end