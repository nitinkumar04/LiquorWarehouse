CREATE TABLE [GDOut].[GD_Time_Series]
(
		a__time_series_dim_id VARCHAR(512) NOT NULL PRIMARY KEY,
		a__time_series_dim_name VARCHAR(512),
		f__time_series_dim_fact VARCHAR(14),
		l__time_series_dim_name__time_series_dim_sort INTEGER
);	