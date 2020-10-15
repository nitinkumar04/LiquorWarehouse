create procedure SeedStageData as
begin
/****** Inserts data into Stage Tables from Global Database for data that is not sourced from SalesForce ******/

  /* Insert into the Source Tables */
  truncate table Source
  insert into Source values ('LiquorWarehouse')
  insert into Source values ('Salesforce')
  insert into Source values ('ERP')

  
  /* Geo Data */
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

  
  /* Type Data */
  truncate table AccountType
  insert into AccountType(Acct_Type)
    select Acct_Type from Global..AccountType

  truncate table TypeData
  insert into TypeData(Type_Id,Type_Name,Type_Plural,Type_Group,Type_Subtype,Type_Order)
    select Type_Id, Type_Name, Type_Plural, Type_Group, Type_Subtype, Type_Order from Global..TypeData

 
  /* Currency */
  truncate table Currency
  insert into Currency(Currency_Dim_Id, Currency_ISO_Code, Currency_Conversion_Rate, Currency_Decimal_Places, Currency_Is_Active, Currency_Is_Corporate, Currency_Corporate_ISO_Code)
    select Currency_Dim_Id, Currency_ISO_Code, Currency_Conversion_Rate, Currency_Decimal_Places, Currency_Is_Active, Currency_Is_Corporate, Currency_Corporate_ISO_Code from Global..Currency

 
  /* LoadDataDateTime */
  truncate table LoadDataDateTime
  
  -- SFIn
  insert into LoadDataDateTime
    select 'SFIn ' + t.name, '1/1/1900', '1/1/2030', 0, 0, 1 from sys.tables t inner join sys.schemas s on s.schema_id = t.schema_id where s.name = 'SFIn' order by t.name

  -- Removing SFIn gvp__Activity_Goal__c from the list 
  Delete LoadDataDateTime where PipelineName='SFIn gvp__Activity_Goal__c'

  -- Set FullLoadDefault Flag
  Update LoadDataDateTime
  Set FullLoadDefault=0
  where PipelineName in
	(select 'SFIn ' + t.name from sys.tables t 
	inner join sys.schemas s on s.schema_id = t.schema_id 
	inner join sys.tables tgvp on t.name=tgvp.name
	inner join sys.schemas sgvp on sgvp.schema_id = tgvp.schema_id 
	where s.name = 'SFIn' and sgvp.name ='GVP')

  -- GVW
  insert into LoadDataDateTime
    select 'GVW ' + t.name, '1/1/1900', '1/1/2030', 0, 0, 0 from sys.tables t inner join sys.schemas s on s.schema_id = t.schema_id where s.name = 'GVW' order by t.name

  -- Set GVW FiscalDateDim FullLoadDefault to 1
  Update LoadDataDateTime
  Set FullLoadDefault=1 where PipelineName='GVW FiscalDateDim'

 
end