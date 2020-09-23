CREATE procedure [ERPIn].[RestateRAD]
  @DateOfData varchar(10) = null,
  @DistributorKey varchar(50) = '',
  @ItemKey varchar(50) = '',
  @RetailerKey varchar(50) = ''
as
begin
  declare @sql varchar(1000)
  declare @StartDate date
  declare @EndDate date
  declare @DateWhereClause varchar(100)
  declare @DistributorWhereClause varchar(100)
  declare @ItemWhereClause varchar(100)
  declare @RetailerWhereClause varchar(100)

	-- Beginning of the sql statement
  set @sql = 'insert into sfout.gvp__RAD__c (Id, gvp__Distributor__c, gvp__RAD_Key__c, gvp__Date__c, gvp__Item__c, gvp__Account__c, gvp__Dist_Inv_Number__c, gvp__Dist_Item_Number__c, isDeleted)
    (select 
			r.Id,
			r.gvp__Distributor__c, 
			r.gvp__RAD_Key__c, 
			r.gvp__Date__c, 
			r.gvp__Item__c,
      r.gvp__Account__c,
      r.gvp__Dist_Inv_Number__c,
      r.gvp__Dist_Item_Number__c,
			''true'' 
		from GVP.gvp__RAD__c r
      inner join gvp.Account ar on ar.Id = r.gvp__Account__c
			inner join gvp.gvp__Item__c i on i.Id = r.gvp__Item__c
      inner join gvp.Account ad on ad.Id = r.gvp__Distributor__c
		where '

	
	/* RAD Date */

	-- Set the default start and end dates, if order date isn't null, then parse the value to create the date range, otherwise just use the defaults
  set @StartDate = '2000-01-01'
  set @EndDate = '2040-01-01'

  if patindex('____-__-__', @DateOfData) <> 0
    begin
      set @StartDate = convert(date, @DateOfData)
      set @EndDate = @StartDate
    end

  else if patindex('____-__', @DateOfData) <> 0
    begin
      set @StartDate = convert(date, @DateOfData + '-01')
      set @EndDate = dateadd(day, -1, dateadd(month, 1, @StartDate))
    end

  else if patindex('____', @DateOfData) <> 0 and CHARINDEX('-', @DateOfData) = 0
    begin
      set @StartDate = convert(date, @DateOfData + '-01-01')
      set @EndDate = convert(date, @DateOfData + '-12-31')
    end

	-- Create the where clause for the date
  set @DateWhereClause = 'gvp__Date__c between ''' + convert(varchar, @StartDate) + ''' and ''' + convert(varchar, @EndDate) + ''''


	/* Distributor */
	-- If distributor is null, then create an empty string for the distributor where clause, otherwise add it to the distributor where clause
	if @DistributorKey = ''
		set @DistributorWhereClause = ''
	else 
		set @DistributorWhereClause = ' and ad.gvp__Account_Key__c = ''' + @DistributorKey + ''''


	/* Item */
	-- Same logic as above for distributor, but with Item
	if @ItemKey = ''
		set @ItemWhereClause = ''
	else 
		set @ItemWhereClause = ' and i.gvp__Item_Key__c = ''' + @ItemKey + ''''


	/* Retailer */
	-- If Retailer is null, then create an empty string for the Retailer where clause, otherwise add it to the Retailer where clause
	if @RetailerKey = ''
		set @RetailerWhereClause = ''
	else 
		set @RetailerWhereClause = ' and ar.gvp__Account_Key__c = ''' + @RetailerKey + ''''



	-- Add all the individual where clauses together
  set @sql = @sql + @DateWhereClause + @DistributorWhereClause + @ItemWhereClause + @RetailerWhereClause + ' and r.isDeleted = ''false'')'

  --print (@sql)
	exec (@sql)

end

