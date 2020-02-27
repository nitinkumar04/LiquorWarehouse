CREATE TABLE [GDOut].[GD_Filter_List]
(
		a__filter_list_dim_description VARCHAR(1020),
		a__filter_list_dim_group VARCHAR(512),
		a__filter_list_dim_name VARCHAR(512),
		a__filter_list_dim_package VARCHAR(512),
		cp__filter_list_dim_id VARCHAR(512) NOT NULL PRIMARY KEY,
		f__filter_list_dim_fact VARCHAR(14),
		l__filter_list_dim_name__filter_list_dim_sort VARCHAR(512)

)
