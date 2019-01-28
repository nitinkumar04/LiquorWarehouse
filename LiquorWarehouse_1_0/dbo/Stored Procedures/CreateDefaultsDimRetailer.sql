CREATE procedure [dbo].[CreateDefaultsDimRetailer] as
begin
	declare @numDefaults int
	set @numDefaults = (select count(1) from DimRetailer where LBRetailerSkey < 0)

	if (@numDefaults = 2) return
	else 
		begin
			delete from DimRetailer where LBRetailerSKey < 0

			set identity_insert DimRetailer on 
			
			insert into DimRetailer (LBRetailerSkey, RetailerID, RetailerLD, LBSalesforceURL, LBPremiseTypeSKey, LBRetailerOwnerSKey, LBRetailerHQSkey, LBExistsInSFFlag, LBSourceID, SourceCreateDate, SourceModifiedDate, LBCreateDate, LBModifiedDate) 
				values (-2, '-2', 'Invalid', 'Invalid', -2, -2, -2, 0, 0, getdate(), getdate(), getdate(), getdate())

			insert into DimRetailer (LBRetailerSkey, RetailerID, RetailerLD, LBSalesforceURL, LBPremiseTypeSKey, LBRetailerOwnerSKey, LBRetailerHQSkey, LBExistsInSFFlag, LBSourceID, SourceCreateDate, SourceModifiedDate, LBCreateDate, LBModifiedDate) 
				values (-1, '-1', 'No Data', 'No Data', -1, -1, -1, -1, 0, getdate(), getdate(), getdate(), getdate())

		end
end
