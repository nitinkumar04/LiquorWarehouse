create procedure [ERPIn].[RestateShipments]
 @OrderDate varchar(10) = null,
  @DistributorKey varchar(50) = '',
  @ItemKey varchar(50) = '',
  @OrderNumber varchar(100) = ''
as
begin
  declare @sql varchar(1000)
  declare @StartDate date
  declare @EndDate date
  declare @DateWhereClause varchar(100)
  declare @DistributorWhereClause varchar(100)
  declare @ItemWhereClause varchar(100)
  declare @OrderNumberWhereClause varchar(100)

	-- Beginning of the sql statement
  set @sql = 'insert into sfout.gvp__Shipment__c (Id, gvp__Distributor__c, gvp__Shipment_Key__c, gvp__Date_of_Order__c, gvp__Item__c, isDeleted)
    (select 
			s.Id,
			s.gvp__Distributor__c, 
			s.gvp__Shipment_Key__c, 
			s.gvp__Date_of_Order__c, 
			s.gvp__Item__c,
			''true'' 
		from GVP.gvp__Shipment__c s
			inner join gvp.Account ad on ad.Id = s.gvp__Distributor__c
			inner join gvp.gvp__Item__c i on i.Id = s.gvp__Item__c
		where '

	
	/* Order Date */

	-- Set the default start and end dates, if order date isn't null, then parse the value to create the date range, otherwise just use the defaults
  set @StartDate = '2000-01-01'
  set @EndDate = '2040-01-01'

  if patindex('____-__-__', @OrderDate) <> 0
    begin
      set @StartDate = convert(date, @OrderDate)
      set @EndDate = @StartDate
    end

  else if patindex('____-__', @OrderDate) <> 0
    begin
      set @StartDate = convert(date, @OrderDate + '-01')
      set @EndDate = dateadd(day, -1, dateadd(month, 1, @StartDate))
    end

  else if patindex('____', @OrderDate) <> 0 and CHARINDEX('-', @OrderDate) = 0
    begin
      set @StartDate = convert(date, @OrderDate + '-01-01')
      set @EndDate = convert(date, @OrderDate + '-12-31')
    end

	-- Create the where clause for the date
  set @DateWhereClause = 'gvp__Date_of_Order__c between ''' + convert(varchar, @StartDate) + ''' and ''' + convert(varchar, @EndDate) + ''''


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


	/* Order Number */
	-- Same as above, but for Order
	if @OrderNumber = ''
		set @OrderNumberWhereClause = ''
	else
		set @OrderNumberWhereClause = ' and gvp__Order_Number__c = ''' + @OrderNumber + ''''

	-- Add all the individual where clauses together
  set @sql = @sql + @DateWhereClause + @DistributorWhereClause + @ItemWhereClause + @OrderNumberWhereClause + ' and s.isDeleted = ''false'')'

  --print (@sql)
	exec (@sql)

end
