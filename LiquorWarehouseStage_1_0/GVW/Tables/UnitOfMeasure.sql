CREATE TABLE [GVW].[UnitOfMeasure]
(
		a__uom_dim_name VARCHAR(512),
		cp__uom_dim_id VARCHAR(512) NOT NULL PRIMARY KEY,
		f__uom_dim_fact VARCHAR(14),
		l__uom_dim_name__unit_of_measure_dim_sort INTEGER,
		IsDeleted			VARCHAR(10)		
)
