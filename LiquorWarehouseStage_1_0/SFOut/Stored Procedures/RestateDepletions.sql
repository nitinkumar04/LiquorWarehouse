create procedure [ERPIn].[RestateDepletions]
  @DepletionDate varchar(10) = null,
  @DistributorKey varchar(50) = '',
  @ItemKey varchar(50) = ''
as
begin
  declare @sql varchar(1000)
  declare @StartDate date
  declare @EndDate date
  declare @DateWhereClause varchar(100)
  declare @DistributorWhereClause varchar(100)
  declare @ItemWhereClause varchar(100)

	-- Beginning of the sql statement
  set @sql = 'insert into sfout.gvp__Depletion__c (Id, gvp__Distributor__c, gvp__Depletion_Key__c, gvp__Date__c, gvp__Item__c, isDeleted)
    (select 
			d.Id,
			d.gvp__Distributor__c, 
			d.gvp__Depletion_Key__c, 
			d.gvp__Date__c, 
			d.gvp__Item__c,
			''true'' 
		from GVP.gvp__Depletion__c d
			inner join gvp.Account ad on ad.Id = d.gvp__Distributor__c
			inner join gvp.gvp__Item__c i on i.Id = d.gvp__Item__c
		where '

	
	/* Order Date */

	-- Set the default start and end dates, if order date isn't null, then parse the value to create the date range, otherwise just use the defaults
  set @StartDate = '2000-01-01'
  set @EndDate = '2040-01-01'

  if patindex('____-__-__', @DepletionDate) <> 0
    begin
      set @StartDate = convert(date, @DepletionDate)
      set @EndDate = @StartDate
    end

  else if patindex('____-__', @DepletionDate) <> 0
    begin
      set @StartDate = convert(date, @DepletionDate + '-01')
      set @EndDate = dateadd(day, -1, dateadd(month, 1, @StartDate))
    end

  else if patindex('____', @DepletionDate) <> 0 and CHARINDEX('-', @DepletionDate) = 0
    begin
      set @StartDate = convert(date, @DepletionDate + '-01-01')
      set @EndDate = convert(date, @DepletionDate + '-12-31')
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


	-- Add all the individual where clauses together
  set @sql = @sql + @DateWhereClause + @DistributorWhereClause + @ItemWhereClause + ' and d.isDeleted = ''false'')'

  --print (@sql)
	exec (@sql)

end
