CREATE TABLE [GVW].[Transaction_Type]
(
	a__transaction_type_dim_name VARCHAR(512),		
	cp__transaction_type_dim_id VARCHAR(512) NOT NULL PRIMARY KEY,		
	f__transaction_type_dim_fact VARCHAR(14),		
	l__transaction_type_dim_name__transaction_type_dim_sort INTEGER
)
