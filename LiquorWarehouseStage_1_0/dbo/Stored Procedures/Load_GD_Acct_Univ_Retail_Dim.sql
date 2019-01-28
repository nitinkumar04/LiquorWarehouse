CREATE procedure Load_GD_Acct_Univ_Retail_Dim as
begin
	truncate table GDout.GD_Acct_Univ_Retail_Dim

	insert into GDOut.GD_Acct_Univ_Retail_Dim
	select
		a.ID as [Account Retail Dim Id],
		a.CreatedDate as [Created Date],
		a.LastModifiedDate as [Modified Date],
		case 
			when isnull(a.gvp__BDN_ID__c, '') = '' then a.[Name] + ' (' + a.Id + ')' 
			else a.[Name] + ' (' + a.gvp__BDN_ID__c + ')' 
		end as [Account Customer Number],
    a.gvp__BDN_Id__c as [Account BDN Id],
    a.[Name] as [Account DBA Name],
    a.gvp__BDN_Date_of_Data__c as [Account BDN Date of Data],
    a.gvp__BDN_Last_Update__c as [Account BDN Last Update],
    a.gvp__BDN_AddDate__c as [Account BDN Add Date],
    a.gvp__BDN_ChangeDate__c as [Account BDN Change Date],
    a.gvp__Consumer_Demo__c as [Account Consumer Demographic],
    a.gvp__Primary_Contact__c as [Account Primary Contact],
    a.gvp__Primary_Email__c as [Account Primary Email],
    a.gvp__Company_Size_Code__c as [Account Company Size],
    a.gvp__Latitude_Longitude_Precision_Code__c as [Account Geo Precision Code],
    case 
			when isnull(a.gvp__Latitude__c, '') = '' then null 
			else convert(decimal, a.gvp__Latitude__c) 
		end as [Account Latitude],
    case 
			when isnull(a.gvp__Longitude__c, '') = '' then null 
			else convert(decimal, a.gvp__Longitude__c) 
		end as [Account Longitude],
    a.gvp__License_Number__c as [Account License Number],
    case 
			when isnull(a.gvp__NumberofLocations__c, '') = '' then null 
			else convert(decimal, a.gvp__NumberofLocations__c) 
		end as [Account Number of Locations],
    a.gvp__Family_Owner_Code__c as [Account Family Owner Code],
    a.gvp__Owner_State__c as [Account Immediate Parent State],
    case 
			when isnull(a.gvp__Owner_State_FIPS_Code__c, '') = '' then null 
			else convert(decimal, a.gvp__Owner_State_FIPS_Code__c) 
		end as [Account Immediate Parent State FIPS Code],
    case 
			when isnull(a.gvp__Owner_County_FIPS_code__c, '') = '' then null 
			else convert(decimal, a.gvp__Owner_County_FIPS_code__c) 
		end as [Account Immediate Parent County FIPS Code],
    a.gvp__Outlet_Number__c as [Account Outlet Number],
    a.gvp__Outlet_Place_Name__c as [Account Outlet Place Name],
    case 
			when isnull(a.gvp__Store_FTE_s__c, '') = '' then null 
			else convert(decimal, a.gvp__Store_FTE_s__c) 
		end as [Account Number of FTEs],
    case 
			when isnull(a.gvp__Store_Number_of_Registers__c, '') = '' then null 
			else convert(decimal, a.gvp__Store_Number_of_Registers__c) 
		end as [Account Number of Registers],
    case 
			when isnull(a.gvp__Store_Square_Footage__c, '') = '' then null 
			else convert(decimal, a.gvp__Store_Square_Footage__c) 
		end as [Account Square Footage],
    case 
			when isnull(a.gvp__Store_Volume_Annual__c, '') = '' then null
			else convert(decimal, a.gvp__Store_Volume_Annual__c)
		end as [Account Annual Volume],
    case 
			when isnull(a.gvp__Store_Volume_Weekly__c, '') = '' then null
			else convert(decimal, a.gvp__Store_Volume_Weekly__c)
		end as [Account Weekly Volume],
    d.[Name] as [Account Distributor Name],
    a.gvp__Distributor_Team__c as [Account Distributor Team],
    a.gvp__Other_Rep__c as [Account Distributor Rep]
	from LiquorBarnStage.SFIn.Account a
		inner join LiquorBarnStage.SFIn.Account d on a.gvp__Distributor__c = d.id
		inner join LiquorBarnStage.SFIn.RecordType rt on rt.ID = d.RecordTypeId
	where rt.[Name] = 'Distributor'

end


