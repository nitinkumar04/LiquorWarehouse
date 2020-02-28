CREATE TABLE [GDOut].[GD_Metric]
(
		a__metric_dim_name VARCHAR(512),
		cp__metric_dim_id VARCHAR(512) NOT NULL PRIMARY KEY,
		f__metric_dim_fact VARCHAR(14),
		l__metric_dim_name__metric_dim_sort VARCHAR(512)
)
