--------------------------------------------------				
-- gd_account_call_fact --				
--------------------------------------------------				
CREATE TABLE "gd_account_call_fact" (				
		a__account_call_custom_1 VARCHAR(512),		
		a__account_call_custom_2 VARCHAR(512),		
		a__account_call_custom_3 VARCHAR(512),		
		a__account_call_custom_4 VARCHAR(512),		
		a__account_call_custom_5 VARCHAR(512),		
		a__account_call_custom_checkbox_1 VARCHAR(512),		
		a__account_call_custom_checkbox_2 VARCHAR(512),		
		a__account_call_custom_checkbox_3 VARCHAR(512),		
		a__account_call_date VARCHAR(512),		
		a__account_call_description VARCHAR(512),		
		a__account_call_fact_name VARCHAR(512),		
		a__account_call_geocode VARCHAR(512),		
		a__account_call_id VARCHAR(512),		
		a__account_call_image_description VARCHAR(512),		
		a__account_call_image_id VARCHAR(512),		
		a__account_call_image_ind VARCHAR(512),		
		a__account_call_image_name VARCHAR(512),		
		a__account_call_key VARCHAR(512),		
		a__account_call_latitude VARCHAR(512),		
		a__account_call_local_date VARCHAR(512),		
		a__account_call_longitude VARCHAR(512),		
		a__account_call_name VARCHAR(512),		
		a__account_call_notes VARCHAR(512),		
		a__account_call_priority VARCHAR(512),		
		a__account_call_status VARCHAR(512),		
		a__account_call_subject VARCHAR(512),		
		a__account_call_time VARCHAR(512),		
		a__account_call_type VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__task_call_type VARCHAR(512),		
		a__task_id VARCHAR(512),		
		a__task_status VARCHAR(512),		
		a__task_type VARCHAR(512),		
		cp__account_call_fact_id VARCHAR(512),		
		d__createdate DATE,		
		d__fiscaldate DATE,		
		d__txnaltdate DATE,		
		d__txndate DATE,		
		f__account_call_distance NUMERIC(15,4),		
		f__account_call_fact_1 NUMERIC(15,4),		
		f__account_call_fact_2 NUMERIC(15,4),		
		f__create_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__txn_alt_date INTEGER,		
		f__txn_date INTEGER,		
		l__account_call_fact_name__account_call_fact_url VARCHAR(512),		
		l__account_call_image_id__account_call_dashboard_image VARCHAR(512),		
		l__account_call_image_id__account_call_table_image VARCHAR(512),		
		l__account_call_image_name__account_call_image_url VARCHAR(512),		
		l__account_call_name__account_call_url VARCHAR(512),		
		l__task_id__task_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__account_team_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__activity_goal_dim VARCHAR(512),		
		r__contact_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__sales_division_dim VARCHAR(512),		
		r__spend_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_account_custom_dim --				
--------------------------------------------------				
CREATE TABLE "gd_account_custom_dim" (				
		a__account_name VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__account_custom_dim_id VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_account_dim --				
--------------------------------------------------				
CREATE TABLE "gd_account_dim" (				
		a__account_active_indicator VARCHAR(512),		
		a__account_banner_name VARCHAR(512),		
		a__account_beer_indicator VARCHAR(512),		
		a__account_beer_volume VARCHAR(512),		
		a__account_chain_ind VARCHAR(512),		
		a__account_city VARCHAR(512),		
		a__account_class_of_trade VARCHAR(512),		
		a__account_country VARCHAR(512),		
		a__account_county VARCHAR(512),		
		a__account_credit_status VARCHAR(512),		
		a__account_custom_1 VARCHAR(512),		
		a__account_custom_10 VARCHAR(512),		
		a__account_custom_2 VARCHAR(512),		
		a__account_custom_3 VARCHAR(512),		
		a__account_custom_4 VARCHAR(512),		
		a__account_custom_5 VARCHAR(512),		
		a__account_custom_6 VARCHAR(512),		
		a__account_custom_7 VARCHAR(512),		
		a__account_custom_8 VARCHAR(512),		
		a__account_custom_9 VARCHAR(512),		
		a__account_custom_checkbox_1 VARCHAR(512),		
		a__account_custom_checkbox_2 VARCHAR(512),		
		a__account_custom_date_1 VARCHAR(512),		
		a__account_custom_date_2 VARCHAR(512),		
		a__account_customer_priority VARCHAR(512),		
		a__account_decision_maker_email VARCHAR(512),		
		a__account_decision_maker_name VARCHAR(512),		
		a__account_delivery_time VARCHAR(512),		
		a__account_description VARCHAR(512),		
		a__account_dim_granularity VARCHAR(512),		
		a__account_dim_name VARCHAR(512),		
		a__account_distributor_name VARCHAR(512),		
		a__account_distributor_rep VARCHAR(512),		
		a__account_distributor_team VARCHAR(512),		
		a__account_fips_county_geocode VARCHAR(512),		
		a__account_fips_county_name VARCHAR(512),		
		a__account_food_type VARCHAR(512),		
		a__account_format VARCHAR(512),		
		a__account_franchise_indicator VARCHAR(512),		
		a__account_geocode VARCHAR(512),		
		a__account_geocode_latitude VARCHAR(512),		
		a__account_geocode_longitude VARCHAR(512),		
		a__account_geocode_unavailable VARCHAR(512),		
		a__account_groups VARCHAR(512),		
		a__account_id VARCHAR(512),		
		a__account_immediate_parent_name VARCHAR(512),		
		a__account_key VARCHAR(512),		
		a__account_key_account VARCHAR(512),		
		a__account_level VARCHAR(512),		
		a__account_license_expiration VARCHAR(512),		
		a__account_license_type VARCHAR(512),		
		a__account_liquor_indicator VARCHAR(512),		
		a__account_liquor_volume VARCHAR(512),		
		a__account_marketing_group_code VARCHAR(512),		
		a__account_marketing_group_name VARCHAR(512),		
		a__account_marketing_group_ownership VARCHAR(512),		
		a__account_msa_code VARCHAR(512),		
		a__account_msa_name VARCHAR(512),		
		a__account_name VARCHAR(512),		
		a__account_name_number VARCHAR(512),		
		a__account_on_premise_indicator VARCHAR(512),		
		a__account_owner_email VARCHAR(512),		
		a__account_owner_first_name VARCHAR(512),		
		a__account_owner_id VARCHAR(512),		
		a__account_owner_last_name VARCHAR(512),		
		a__account_owner_name VARCHAR(512),		
		a__account_phone VARCHAR(512),		
		a__account_premise_type VARCHAR(512),		
		a__account_rank VARCHAR(512),		
		a__account_record_type VARCHAR(512),		
		a__account_resale_number VARCHAR(512),		
		a__account_segment_channel VARCHAR(512),		
		a__account_segment_key VARCHAR(512),		
		a__account_segment_name VARCHAR(512),		
		a__account_shipping_city VARCHAR(512),		
		a__account_shipping_country VARCHAR(512),		
		a__account_shipping_state VARCHAR(512),		
		a__account_shipping_street VARCHAR(512),		
		a__account_shipping_zip VARCHAR(512),		
		a__account_shipping_zip5 VARCHAR(512),		
		a__account_source_file VARCHAR(512),		
		a__account_state VARCHAR(512),		
		a__account_store_status VARCHAR(512),		
		a__account_street VARCHAR(512),		
		a__account_trade_channel VARCHAR(512),		
		a__account_trade_sub_channel VARCHAR(512),		
		a__account_type VARCHAR(512),		
		a__account_ultimate_parent_code VARCHAR(512),		
		a__account_ultimate_parent_name VARCHAR(512),		
		a__account_warehouse VARCHAR(512),		
		a__account_wine_indicator VARCHAR(512),		
		a__account_wine_volume VARCHAR(512),		
		a__account_zip VARCHAR(512),		
		a__account_zip5 VARCHAR(512),		
		a__company_custom_1 VARCHAR(512),		
		a__company_custom_2 VARCHAR(512),		
		a__company_id VARCHAR(512),		
		a__company_key VARCHAR(512),		
		a__company_name VARCHAR(512),		
		a__division_custom_1 VARCHAR(512),		
		a__division_custom_2 VARCHAR(512),		
		a__division_custom_3 VARCHAR(512),		
		a__division_custom_4 VARCHAR(512),		
		a__division_custom_5 VARCHAR(512),		
		a__division_id VARCHAR(512),		
		a__division_key VARCHAR(512),		
		a__division_name VARCHAR(512),		
		a__key_acct_chain_indicator VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__region_custom_1 VARCHAR(512),		
		a__region_custom_2 VARCHAR(512),		
		a__region_id VARCHAR(512),		
		a__region_key VARCHAR(512),		
		a__region_name VARCHAR(512),		
		a__territory_custom_1 VARCHAR(512),		
		a__territory_custom_2 VARCHAR(512),		
		a__territory_custom_3 VARCHAR(512),		
		a__territory_custom_4 VARCHAR(512),		
		a__territory_custom_5 VARCHAR(512),		
		a__territory_id VARCHAR(512),		
		a__territory_key VARCHAR(512),		
		a__territory_name VARCHAR(512),		
		cp__account_dim_id VARCHAR(512),		
		d__createdate DATE,		
		f__account_credit_available NUMERIC(12,2),		
		f__account_credit_limit NUMERIC(12,2),		
		f__create_date INTEGER,		
		l__account_dim_id__account_dim_url VARCHAR(512),		
		l__account_name__account_url VARCHAR(512),		
		l__account_name_number__account_url2 VARCHAR(512),		
		l__account_owner_name__account_owner_url VARCHAR(512),		
		l__territory_name__territory_url VARCHAR(512),		
		r__account_custom_dim VARCHAR(512),		
		r__account_hier_dim VARCHAR(512),		
		r__account_ka1_dim VARCHAR(512),		
		r__account_ka2_dim VARCHAR(512),		
		r__account_mktg_group_dim VARCHAR(512),		
		r__account_owner_dim VARCHAR(512),		
		r__account_retail_dim VARCHAR(512),		
		r__acct_record_type_dim VARCHAR(512),		
		r__acct_segment_dim VARCHAR(512),		
		r__acct_type_dim VARCHAR(512),		
		r__currency_dim VARCHAR(512),		
		r__kpi_segment_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_account_hier_dim --				
--------------------------------------------------				
CREATE TABLE "gd_account_hier_dim" (				
		a__acct_hq_1_city VARCHAR(512),		
		a__acct_hq_1_id VARCHAR(512),		
		a__acct_hq_1_key VARCHAR(512),		
		a__acct_hq_1_key_account VARCHAR(512),		
		a__acct_hq_1_name VARCHAR(512),		
		a__acct_hq_1_name_number VARCHAR(512),		
		a__acct_hq_1_owner_email VARCHAR(512),		
		a__acct_hq_1_owner_name VARCHAR(512),		
		a__acct_hq_1_record_type VARCHAR(512),		
		a__acct_hq_1_state VARCHAR(512),		
		a__acct_hq_2_city VARCHAR(512),		
		a__acct_hq_2_id VARCHAR(512),		
		a__acct_hq_2_key VARCHAR(512),		
		a__acct_hq_2_key_account VARCHAR(512),		
		a__acct_hq_2_name VARCHAR(512),		
		a__acct_hq_2_name_number VARCHAR(512),		
		a__acct_hq_2_owner_email VARCHAR(512),		
		a__acct_hq_2_owner_name VARCHAR(512),		
		a__acct_hq_2_record_type VARCHAR(512),		
		a__acct_hq_2_state VARCHAR(512),		
		a__acct_hq_3_city VARCHAR(512),		
		a__acct_hq_3_id VARCHAR(512),		
		a__acct_hq_3_key VARCHAR(512),		
		a__acct_hq_3_key_account VARCHAR(512),		
		a__acct_hq_3_name VARCHAR(512),		
		a__acct_hq_3_name_number VARCHAR(512),		
		a__acct_hq_3_owner_email VARCHAR(512),		
		a__acct_hq_3_owner_name VARCHAR(512),		
		a__acct_hq_3_record_type VARCHAR(512),		
		a__acct_hq_3_state VARCHAR(512),		
		a__acct_hq_4_city VARCHAR(512),		
		a__acct_hq_4_id VARCHAR(512),		
		a__acct_hq_4_key VARCHAR(512),		
		a__acct_hq_4_key_account VARCHAR(512),		
		a__acct_hq_4_name VARCHAR(512),		
		a__acct_hq_4_name_number VARCHAR(512),		
		a__acct_hq_4_owner_email VARCHAR(512),		
		a__acct_hq_4_owner_name VARCHAR(512),		
		a__acct_hq_4_record_type VARCHAR(512),		
		a__acct_hq_4_state VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__account_hier_dim_id VARCHAR(512),		
		l__acct_hq_1_name__acct_hq_1_url VARCHAR(512),		
		l__acct_hq_1_name_number__acct_hq_1_url2 VARCHAR(512),		
		l__acct_hq_2_name__acct_hq_2_url VARCHAR(512),		
		l__acct_hq_2_name_number__acct_hq_2_url2 VARCHAR(512),		
		l__acct_hq_3_name__acct_hq_3_url VARCHAR(512),		
		l__acct_hq_3_name_number__acct_hq_3_url2 VARCHAR(512),		
		l__acct_hq_4_name__acct_hq_4_url VARCHAR(512),		
		l__acct_hq_4_name_number__acct_hq_4_url2 VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_account_hq_by_dim --				
--------------------------------------------------				
CREATE TABLE "gd_account_hq_by_dim" (				
		a__account_hq_by_level VARCHAR(512),		
		a__account_hq_type VARCHAR(512),		
		cp__account_hq_by_dim_id VARCHAR(512),		
		f__account_hq_by_count NUMERIC(12,2),		
		r__account_dim VARCHAR(512),		
		r__acct_hq_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_account_ka1_dim --				
--------------------------------------------------				
CREATE TABLE "gd_account_ka1_dim" (				
		a__account_ka1_city VARCHAR(512),		
		a__account_ka1_custom_1 VARCHAR(512),		
		a__account_ka1_custom_2 VARCHAR(512),		
		a__account_ka1_custom_3 VARCHAR(512),		
		a__account_ka1_custom_4 VARCHAR(512),		
		a__account_ka1_custom_5 VARCHAR(512),		
		a__account_ka1_id VARCHAR(512),		
		a__account_ka1_key VARCHAR(512),		
		a__account_ka1_key_account VARCHAR(512),		
		a__account_ka1_level VARCHAR(512),		
		a__account_ka1_name VARCHAR(512),		
		a__account_ka1_name_number VARCHAR(512),		
		a__account_ka1_owner_email VARCHAR(512),		
		a__account_ka1_owner_first_name VARCHAR(512),		
		a__account_ka1_owner_id VARCHAR(512),		
		a__account_ka1_owner_last_name VARCHAR(512),		
		a__account_ka1_owner_name VARCHAR(512),		
		a__account_ka1_record_type VARCHAR(512),		
		a__account_ka1_state VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__territory_key VARCHAR(512),		
		a__territory_name VARCHAR(512),		
		cp__account_ka1_dim_id VARCHAR(512),		
		l__account_ka1_name__account_ka1_url VARCHAR(512),		
		l__account_ka1_name_number__account_ka1_url2 VARCHAR(512),		
		l__account_ka1_owner_name__account_ka1_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_account_ka2_dim --				
--------------------------------------------------				
CREATE TABLE "gd_account_ka2_dim" (				
		a__account_ka2_city VARCHAR(512),		
		a__account_ka2_custom_1 VARCHAR(512),		
		a__account_ka2_custom_2 VARCHAR(512),		
		a__account_ka2_custom_3 VARCHAR(512),		
		a__account_ka2_custom_4 VARCHAR(512),		
		a__account_ka2_custom_5 VARCHAR(512),		
		a__account_ka2_id VARCHAR(512),		
		a__account_ka2_key VARCHAR(512),		
		a__account_ka2_key_account VARCHAR(512),		
		a__account_ka2_level VARCHAR(512),		
		a__account_ka2_name VARCHAR(512),		
		a__account_ka2_name_number VARCHAR(512),		
		a__account_ka2_owner_email VARCHAR(512),		
		a__account_ka2_owner_first_name VARCHAR(512),		
		a__account_ka2_owner_id VARCHAR(512),		
		a__account_ka2_owner_last_name VARCHAR(512),		
		a__account_ka2_owner_name VARCHAR(512),		
		a__account_ka2_record_type VARCHAR(512),		
		a__account_ka2_state VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__territory_key VARCHAR(512),		
		a__territory_name VARCHAR(512),		
		cp__account_ka2_dim_id VARCHAR(512),		
		l__account_ka2_name__account_ka2_url VARCHAR(512),		
		l__account_ka2_name_number__account_ka2_url2 VARCHAR(512),		
		l__account_ka2_owner_name__account_ka2_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_account_mktg_group_dim --				
--------------------------------------------------				
CREATE TABLE "gd_account_mktg_group_dim" (				
		a__account_mktg_group_city VARCHAR(512),		
		a__account_mktg_group_code VARCHAR(512),		
		a__account_mktg_group_custom_1 VARCHAR(512),		
		a__account_mktg_group_custom_2 VARCHAR(512),		
		a__account_mktg_group_custom_3 VARCHAR(512),		
		a__account_mktg_group_custom_4 VARCHAR(512),		
		a__account_mktg_group_custom_5 VARCHAR(512),		
		a__account_mktg_group_id VARCHAR(512),		
		a__account_mktg_group_key VARCHAR(512),		
		a__account_mktg_group_key_account VARCHAR(512),		
		a__account_mktg_group_name VARCHAR(512),		
		a__account_mktg_group_name_number VARCHAR(512),		
		a__account_mktg_group_owner_email VARCHAR(512),		
		a__account_mktg_group_owner_first_name VARCHAR(512),		
		a__account_mktg_group_owner_id VARCHAR(512),		
		a__account_mktg_group_owner_last_name VARCHAR(512),		
		a__account_mktg_group_owner_name VARCHAR(512),		
		a__account_mktg_group_record_type VARCHAR(512),		
		a__account_mktg_group_state VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__account_mktg_group_dim_id VARCHAR(512),		
		l__account_mktg_group_name__account_mktg_group_url VARCHAR(512),		
		l__account_mktg_group_name_number__account_mktg_group_url2 VARCHAR(512),		
		l__account_mktg_group_owner_name__account_mktg_group_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_account_owner_dim --				
--------------------------------------------------				
CREATE TABLE "gd_account_owner_dim" (				
		a__account_owner_active_indicator VARCHAR(512),		
		a__account_owner_city VARCHAR(512),		
		a__account_owner_company VARCHAR(512),		
		a__account_owner_country VARCHAR(512),		
		a__account_owner_custom_1 VARCHAR(512),		
		a__account_owner_custom_2 VARCHAR(512),		
		a__account_owner_custom_3 VARCHAR(512),		
		a__account_owner_custom_4 VARCHAR(512),		
		a__account_owner_custom_5 VARCHAR(512),		
		a__account_owner_department VARCHAR(512),		
		a__account_owner_dim_granularity VARCHAR(512),		
		a__account_owner_dim_name VARCHAR(512),		
		a__account_owner_division VARCHAR(512),		
		a__account_owner_do_not_call VARCHAR(512),		
		a__account_owner_do_not_email VARCHAR(512),		
		a__account_owner_email VARCHAR(512),		
		a__account_owner_email_key VARCHAR(512),		
		a__account_owner_fax VARCHAR(512),		
		a__account_owner_first_name VARCHAR(512),		
		a__account_owner_home_phone VARCHAR(512),		
		a__account_owner_id VARCHAR(512),		
		a__account_owner_key_1 VARCHAR(512),		
		a__account_owner_key_2 VARCHAR(512),		
		a__account_owner_last_name VARCHAR(512),		
		a__account_owner_level VARCHAR(512),		
		a__account_owner_manager_email VARCHAR(512),		
		a__account_owner_manager_first_name VARCHAR(512),		
		a__account_owner_manager_id VARCHAR(512),		
		a__account_owner_manager_last_name VARCHAR(512),		
		a__account_owner_manager_name VARCHAR(512),		
		a__account_owner_mobile_phone VARCHAR(512),		
		a__account_owner_name VARCHAR(512),		
		a__account_owner_other_phone VARCHAR(512),		
		a__account_owner_owner_email VARCHAR(512),		
		a__account_owner_owner_first_name VARCHAR(512),		
		a__account_owner_owner_id VARCHAR(512),		
		a__account_owner_owner_last_name VARCHAR(512),		
		a__account_owner_owner_name VARCHAR(512),		
		a__account_owner_phone VARCHAR(512),		
		a__account_owner_profile_name VARCHAR(512),		
		a__account_owner_record_type VARCHAR(512),		
		a__account_owner_role_name VARCHAR(512),		
		a__account_owner_salutation VARCHAR(512),		
		a__account_owner_source_file VARCHAR(512),		
		a__account_owner_state VARCHAR(512),		
		a__account_owner_street VARCHAR(512),		
		a__account_owner_title VARCHAR(512),		
		a__account_owner_work_email VARCHAR(512),		
		a__account_owner_work_phone VARCHAR(512),		
		a__account_owner_zip VARCHAR(512),		
		a__account_owner_zip5 VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__account_owner_dim_id VARCHAR(512),		
		l__account_owner_dim_name__account_owner_dim_url VARCHAR(512),		
		l__account_owner_manager_name__account_owner_manager_url VARCHAR(512),		
		l__account_owner_name__account_owner_url VARCHAR(512),		
		l__account_owner_owner_name__account_owner_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_account_retail_dim --				
--------------------------------------------------				
CREATE TABLE "gd_account_retail_dim" (				
		a__account_annual_volume VARCHAR(512),		
		a__account_bdn_add_date VARCHAR(512),		
		a__account_bdn_change_date VARCHAR(512),		
		a__account_bdn_data_of_data VARCHAR(512),		
		a__account_bdn_id VARCHAR(512),		
		a__account_bdn_last_update VARCHAR(512),		
		a__account_company_size VARCHAR(512),		
		a__account_consumer_demographic VARCHAR(512),		
		a__account_customer_number VARCHAR(512),		
		a__account_dba_name VARCHAR(512),		
		a__account_distributor_name VARCHAR(512),		
		a__account_distributor_rep VARCHAR(512),		
		a__account_distributor_team VARCHAR(512),		
		a__account_family_owner_code VARCHAR(512),		
		a__account_geo_precision_code VARCHAR(512),		
		a__account_immediate_parent_county_fips VARCHAR(512),		
		a__account_immediate_parent_state VARCHAR(512),		
		a__account_immediate_parent_state_fips VARCHAR(512),		
		a__account_license_number VARCHAR(512),		
		a__account_outlet_number VARCHAR(512),		
		a__account_outlet_place_name VARCHAR(512),		
		a__account_primary_contact VARCHAR(512),		
		a__account_primary_email VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__account_retail_dim_id VARCHAR(512),		
		f__account_latitude NUMERIC(12,2),		
		f__account_longitude NUMERIC(12,2),		
		f__account_number_of_ftes NUMERIC(12,2),		
		f__account_number_of_locations NUMERIC(12,2),		
		f__account_number_of_registers NUMERIC(12,2),		
		f__account_square_footage NUMERIC(12,2),		
		f__account_weekly_volume NUMERIC(12,2)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_account_set_dim --				
--------------------------------------------------				
CREATE TABLE "gd_account_set_dim" (				
		a__account_set_account_name_number VARCHAR(512),		
		a__account_set_active VARCHAR(512),		
		a__account_set_channel VARCHAR(512),		
		a__account_set_custom_text_1 VARCHAR(512),		
		a__account_set_custom_text_2 VARCHAR(512),		
		a__account_set_custom_text_3 VARCHAR(512),		
		a__account_set_custom_text_4 VARCHAR(512),		
		a__account_set_custom_text_5 VARCHAR(512),		
		a__account_set_description VARCHAR(512),		
		a__account_set_dim_granularity VARCHAR(512),		
		a__account_set_dim_name VARCHAR(512),		
		a__account_set_expiration_date VARCHAR(512),		
		a__account_set_external_id VARCHAR(512),		
		a__account_set_id VARCHAR(512),		
		a__account_set_last_account_update VARCHAR(512),		
		a__account_set_member_id VARCHAR(512),		
		a__account_set_member_name VARCHAR(512),		
		a__account_set_name VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__account_set_dim_id VARCHAR(512),		
		l__account_set_dim_name__account_set_dim_url VARCHAR(512),		
		l__account_set_member_name__account_set_member_url VARCHAR(512),		
		l__account_set_name__account_set_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_account_team_dim --				
--------------------------------------------------				
CREATE TABLE "gd_account_team_dim" (				
		a__account_team_account_name_number VARCHAR(512),		
		a__account_team_custom_1 VARCHAR(512),		
		a__account_team_custom_2 VARCHAR(512),		
		a__account_team_custom_3 VARCHAR(512),		
		a__account_team_custom_4 VARCHAR(512),		
		a__account_team_custom_5 VARCHAR(512),		
		a__account_team_dim_name VARCHAR(512),		
		a__account_team_id VARCHAR(512),		
		a__account_team_key VARCHAR(512),		
		a__account_team_manager_1_email VARCHAR(512),		
		a__account_team_manager_1_first_name VARCHAR(512),		
		a__account_team_manager_1_full_name VARCHAR(512),		
		a__account_team_manager_1_id VARCHAR(512),		
		a__account_team_manager_1_key VARCHAR(512),		
		a__account_team_manager_1_last_name VARCHAR(512),		
		a__account_team_manager_1_username VARCHAR(512),		
		a__account_team_manager_2_email VARCHAR(512),		
		a__account_team_manager_2_first_name VARCHAR(512),		
		a__account_team_manager_2_full_name VARCHAR(512),		
		a__account_team_manager_2_id VARCHAR(512),		
		a__account_team_manager_2_key VARCHAR(512),		
		a__account_team_manager_2_last_name VARCHAR(512),		
		a__account_team_manager_2_username VARCHAR(512),		
		a__account_team_manager_3_email VARCHAR(512),		
		a__account_team_manager_3_first_name VARCHAR(512),		
		a__account_team_manager_3_full_name VARCHAR(512),		
		a__account_team_manager_3_id VARCHAR(512),		
		a__account_team_manager_3_key VARCHAR(512),		
		a__account_team_manager_3_last_name VARCHAR(512),		
		a__account_team_manager_3_username VARCHAR(512),		
		a__account_team_name VARCHAR(512),		
		a__account_team_salesperson_email VARCHAR(512),		
		a__account_team_salesperson_first_name VARCHAR(512),		
		a__account_team_salesperson_full_name VARCHAR(512),		
		a__account_team_salesperson_id VARCHAR(512),		
		a__account_team_salesperson_key VARCHAR(512),		
		a__account_team_salesperson_last_name VARCHAR(512),		
		a__account_team_salesperson_username VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__account_team_dim_id VARCHAR(512),		
		l__account_team_dim_name__account_team_dim_url VARCHAR(512),		
		l__account_team_manager_1_full_name__account_team_manager_1_url VARCHAR(512),		
		l__account_team_manager_2_full_name__account_team_manager_2_url VARCHAR(512),		
		l__account_team_manager_3_full_name__account_team_manager_3_url VARCHAR(512),		
		l__account_team_name__account_team_url VARCHAR(512),		
		l__account_team_salesperson_full_name__account_team_salesperson_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__manager_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__sales_division_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_hq_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_hq_dim" (				
		a__acct_hq_city VARCHAR(512),		
		a__acct_hq_custom_1 VARCHAR(512),		
		a__acct_hq_custom_2 VARCHAR(512),		
		a__acct_hq_custom_3 VARCHAR(512),		
		a__acct_hq_custom_4 VARCHAR(512),		
		a__acct_hq_custom_5 VARCHAR(512),		
		a__acct_hq_id VARCHAR(512),		
		a__acct_hq_key VARCHAR(512),		
		a__acct_hq_key_account VARCHAR(512),		
		a__acct_hq_level VARCHAR(512),		
		a__acct_hq_name VARCHAR(512),		
		a__acct_hq_name_number VARCHAR(512),		
		a__acct_hq_owner_email VARCHAR(512),		
		a__acct_hq_owner_first_name VARCHAR(512),		
		a__acct_hq_owner_id VARCHAR(512),		
		a__acct_hq_owner_last_name VARCHAR(512),		
		a__acct_hq_owner_name VARCHAR(512),		
		a__acct_hq_record_type VARCHAR(512),		
		a__acct_hq_state VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__acct_hq_dim_id VARCHAR(512),		
		l__acct_hq_name__acct_hq_url VARCHAR(512),		
		l__acct_hq_name_number__acct_hq_url2 VARCHAR(512),		
		l__acct_hq_owner_name__acct_hq_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_listing_fact --				
--------------------------------------------------				
CREATE TABLE "gd_acct_listing_fact" (				
		a__acct_listing_compliance VARCHAR(512),		
		a__acct_listing_current VARCHAR(512),		
		a__acct_listing_fact_granularity VARCHAR(512),		
		a__acct_listing_fact_name VARCHAR(512),		
		a__acct_listing_fact_type VARCHAR(512),		
		a__acct_listing_new VARCHAR(512),		
		a__acct_listing_type VARCHAR(512),		
		a__authorization_custom_1 VARCHAR(512),		
		a__authorization_custom_2 VARCHAR(512),		
		a__authorization_custom_3 VARCHAR(512),		
		a__authorization_custom_checkbox_1 VARCHAR(512),		
		a__authorization_custom_checkbox_2 VARCHAR(512),		
		a__authorization_custom_text_1 VARCHAR(512),		
		a__authorization_custom_text_2 VARCHAR(512),		
		a__authorization_custom_text_3 VARCHAR(512),		
		a__authorization_custom_text_4 VARCHAR(512),		
		a__authorization_custom_text_5 VARCHAR(512),		
		a__authorization_id VARCHAR(512),		
		a__authorization_key VARCHAR(512),		
		a__authorization_mandated VARCHAR(512),		
		a__authorization_name VARCHAR(512),		
		a__authorization_package_type VARCHAR(512),		
		a__authorization_status VARCHAR(512),		
		a__authorization_supported VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__placement_custom_1 VARCHAR(512),		
		a__placement_custom_2 VARCHAR(512),		
		a__placement_custom_3 VARCHAR(512),		
		a__placement_custom_checkbox_1 VARCHAR(512),		
		a__placement_custom_checkbox_2 VARCHAR(512),		
		a__placement_custom_text_1 VARCHAR(512),		
		a__placement_custom_text_2 VARCHAR(512),		
		a__placement_description VARCHAR(512),		
		a__placement_display_location VARCHAR(512),		
		a__placement_drink_name VARCHAR(512),		
		a__placement_id VARCHAR(512),		
		a__placement_key VARCHAR(512),		
		a__placement_number VARCHAR(512),		
		a__placement_pos_approved VARCHAR(512),		
		a__placement_pos_item_name VARCHAR(512),		
		a__placement_type VARCHAR(512),		
		cp__acct_listing_fact_id VARCHAR(512),		
		d__enddate DATE,		
		d__fiscaldate DATE,		
		d__startdate DATE,		
		d__txndate DATE,		
		f__authorization_custom_currency_1 NUMERIC(12,2),		
		f__authorization_custom_currency_2 NUMERIC(12,2),		
		f__authorization_custom_fact_1 NUMERIC(12,2),		
		f__authorization_custom_fact_2 NUMERIC(12,2),		
		f__end_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__placement_custom_fact_1 NUMERIC(12,2),		
		f__placement_custom_fact_2 NUMERIC(12,2),		
		f__placement_display_cases NUMERIC(12,2),		
		f__placement_pos_quantity NUMERIC(12,2),		
		f__placement_price NUMERIC(12,2),		
		f__placement_scan_amount NUMERIC(12,2),		
		f__start_date INTEGER,		
		f__txn_date INTEGER,		
		l__acct_listing_fact_name__acct_listing_fact_url VARCHAR(512),		
		l__authorization_name__authorization_url VARCHAR(512),		
		l__placement_number__placement_url VARCHAR(512),		
		r__acct_hq_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__currency_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__spend_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_record_type_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_record_type_dim" (				
		a__acct_record_type_developer_name VARCHAR(512),		
		a__acct_record_type_name VARCHAR(512),		
		cp__acct_record_type_dim_id VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_segment_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_segment_dim" (				
		a__acct_segment_channel VARCHAR(512),		
		a__acct_segment_code VARCHAR(512),		
		a__acct_segment_name VARCHAR(512),		
		a__acct_segment_parent_channel VARCHAR(512),		
		a__acct_segment_parent_code VARCHAR(512),		
		a__acct_segment_parent_id VARCHAR(512),		
		a__acct_segment_parent_name VARCHAR(512),		
		a__acct_segment_parent_type VARCHAR(512),		
		a__acct_segment_type VARCHAR(512),		
		cp__acct_segment_dim_id VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_type_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_type_dim" (				
		a__acct_type_name VARCHAR(512),		
		cp__acct_type_dim_id VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_univ_custom_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_univ_custom_dim" (				
		a__account_name VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__acct_univ_custom_dim_id VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_univ_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_univ_dim" (				
		a__acct_univ_active_indicator VARCHAR(512),		
		a__acct_univ_banner_name VARCHAR(512),		
		a__acct_univ_beer_indicator VARCHAR(512),		
		a__acct_univ_beer_volume VARCHAR(512),		
		a__acct_univ_chain_ind VARCHAR(512),		
		a__acct_univ_city VARCHAR(512),		
		a__acct_univ_class_of_trade VARCHAR(512),		
		a__acct_univ_country VARCHAR(512),		
		a__acct_univ_county VARCHAR(512),		
		a__acct_univ_credit_status VARCHAR(512),		
		a__acct_univ_custom_1 VARCHAR(512),		
		a__acct_univ_custom_10 VARCHAR(512),		
		a__acct_univ_custom_2 VARCHAR(512),		
		a__acct_univ_custom_3 VARCHAR(512),		
		a__acct_univ_custom_4 VARCHAR(512),		
		a__acct_univ_custom_5 VARCHAR(512),		
		a__acct_univ_custom_6 VARCHAR(512),		
		a__acct_univ_custom_7 VARCHAR(512),		
		a__acct_univ_custom_8 VARCHAR(512),		
		a__acct_univ_custom_9 VARCHAR(512),		
		a__acct_univ_custom_checkbox_1 VARCHAR(512),		
		a__acct_univ_custom_checkbox_2 VARCHAR(512),		
		a__acct_univ_custom_date_1 VARCHAR(512),		
		a__acct_univ_custom_date_2 VARCHAR(512),		
		a__acct_univ_customer_priority VARCHAR(512),		
		a__acct_univ_decision_maker_email VARCHAR(512),		
		a__acct_univ_decision_maker_name VARCHAR(512),		
		a__acct_univ_delivery_time VARCHAR(512),		
		a__acct_univ_description VARCHAR(512),		
		a__acct_univ_dim_granularity VARCHAR(512),		
		a__acct_univ_dim_name VARCHAR(512),		
		a__acct_univ_distributor_name VARCHAR(512),		
		a__acct_univ_distributor_rep VARCHAR(512),		
		a__acct_univ_distributor_team VARCHAR(512),		
		a__acct_univ_fips_county_geocode VARCHAR(512),		
		a__acct_univ_fips_county_name VARCHAR(512),		
		a__acct_univ_food_type VARCHAR(512),		
		a__acct_univ_format VARCHAR(512),		
		a__acct_univ_franchise_indicator VARCHAR(512),		
		a__acct_univ_geocode VARCHAR(512),		
		a__acct_univ_geocode_latitude VARCHAR(512),		
		a__acct_univ_geocode_longitude VARCHAR(512),		
		a__acct_univ_geocode_unavailable VARCHAR(512),		
		a__acct_univ_groups VARCHAR(512),		
		a__acct_univ_id VARCHAR(512),		
		a__acct_univ_immed_parent_name VARCHAR(512),		
		a__acct_univ_key VARCHAR(512),		
		a__acct_univ_key_account VARCHAR(512),		
		a__acct_univ_level VARCHAR(512),		
		a__acct_univ_license_expiration VARCHAR(512),		
		a__acct_univ_license_type VARCHAR(512),		
		a__acct_univ_liquor_indicator VARCHAR(512),		
		a__acct_univ_liquor_volume VARCHAR(512),		
		a__acct_univ_mktg_group_code VARCHAR(512),		
		a__acct_univ_mktg_group_name VARCHAR(512),		
		a__acct_univ_mktg_group_ownership VARCHAR(512),		
		a__acct_univ_msa_code VARCHAR(512),		
		a__acct_univ_msa_name VARCHAR(512),		
		a__acct_univ_name VARCHAR(512),		
		a__acct_univ_name_number VARCHAR(512),		
		a__acct_univ_on_premise_indicator VARCHAR(512),		
		a__acct_univ_owner_email VARCHAR(512),		
		a__acct_univ_owner_first_name VARCHAR(512),		
		a__acct_univ_owner_id VARCHAR(512),		
		a__acct_univ_owner_last_name VARCHAR(512),		
		a__acct_univ_owner_name VARCHAR(512),		
		a__acct_univ_phone VARCHAR(512),		
		a__acct_univ_premise_type VARCHAR(512),		
		a__acct_univ_rank VARCHAR(512),		
		a__acct_univ_record_type VARCHAR(512),		
		a__acct_univ_resale_number VARCHAR(512),		
		a__acct_univ_segment_channel VARCHAR(512),		
		a__acct_univ_segment_key VARCHAR(512),		
		a__acct_univ_segment_name VARCHAR(512),		
		a__acct_univ_shipping_city VARCHAR(512),		
		a__acct_univ_shipping_country VARCHAR(512),		
		a__acct_univ_shipping_state VARCHAR(512),		
		a__acct_univ_shipping_street VARCHAR(512),		
		a__acct_univ_shipping_zip VARCHAR(512),		
		a__acct_univ_shipping_zip5 VARCHAR(512),		
		a__acct_univ_source_file VARCHAR(512),		
		a__acct_univ_state VARCHAR(512),		
		a__acct_univ_store_status VARCHAR(512),		
		a__acct_univ_street VARCHAR(512),		
		a__acct_univ_trade_channel VARCHAR(512),		
		a__acct_univ_trade_sub_channel VARCHAR(512),		
		a__acct_univ_type VARCHAR(512),		
		a__acct_univ_ult_parent_code VARCHAR(512),		
		a__acct_univ_ult_parent_name VARCHAR(512),		
		a__acct_univ_warehouse VARCHAR(512),		
		a__acct_univ_wine_indicator VARCHAR(512),		
		a__acct_univ_wine_volume VARCHAR(512),		
		a__acct_univ_zip VARCHAR(512),		
		a__acct_univ_zip5 VARCHAR(512),		
		a__company_custom_1 VARCHAR(512),		
		a__company_custom_2 VARCHAR(512),		
		a__company_id VARCHAR(512),		
		a__company_key VARCHAR(512),		
		a__company_name VARCHAR(512),		
		a__division_custom_1 VARCHAR(512),		
		a__division_custom_2 VARCHAR(512),		
		a__division_custom_3 VARCHAR(512),		
		a__division_custom_4 VARCHAR(512),		
		a__division_custom_5 VARCHAR(512),		
		a__division_id VARCHAR(512),		
		a__division_key VARCHAR(512),		
		a__division_name VARCHAR(512),		
		a__key_acct_chain_indicator VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__region_custom_1 VARCHAR(512),		
		a__region_custom_2 VARCHAR(512),		
		a__region_id VARCHAR(512),		
		a__region_key VARCHAR(512),		
		a__region_name VARCHAR(512),		
		a__territory_custom_1 VARCHAR(512),		
		a__territory_custom_2 VARCHAR(512),		
		a__territory_custom_3 VARCHAR(512),		
		a__territory_custom_4 VARCHAR(512),		
		a__territory_custom_5 VARCHAR(512),		
		a__territory_id VARCHAR(512),		
		a__territory_key VARCHAR(512),		
		a__territory_name VARCHAR(512),		
		cp__acct_univ_dim_id VARCHAR(512),		
		d__createdate DATE,		
		f__acct_univ_credit_available NUMERIC(12,2),		
		f__acct_univ_credit_limit NUMERIC(12,2),		
		f__create_date INTEGER,		
		l__acct_univ_dim_id__acct_univ_dim_url VARCHAR(512),		
		l__acct_univ_name__acct_univ_url VARCHAR(512),		
		l__acct_univ_name_number__acct_univ_url2 VARCHAR(512),		
		l__acct_univ_owner_name__acct_univ_owner_url VARCHAR(512),		
		l__territory_name__territory_url VARCHAR(512),		
		r__acct_record_type_dim VARCHAR(512),		
		r__acct_segment_dim VARCHAR(512),		
		r__acct_type_dim VARCHAR(512),		
		r__acct_univ_custom_dim VARCHAR(512),		
		r__acct_univ_hier_dim VARCHAR(512),		
		r__acct_univ_ka1_dim VARCHAR(512),		
		r__acct_univ_ka2_dim VARCHAR(512),		
		r__acct_univ_mktg_group_dim VARCHAR(512),		
		r__acct_univ_owner_dim VARCHAR(512),		
		r__acct_univ_retail_dim VARCHAR(512),		
		r__currency_dim VARCHAR(512),		
		r__kpi_segment_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_univ_hier_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_univ_hier_dim" (				
		a__acct_univ_hq_1_city VARCHAR(512),		
		a__acct_univ_hq_1_id VARCHAR(512),		
		a__acct_univ_hq_1_key VARCHAR(512),		
		a__acct_univ_hq_1_key_account VARCHAR(512),		
		a__acct_univ_hq_1_name VARCHAR(512),		
		a__acct_univ_hq_1_name_number VARCHAR(512),		
		a__acct_univ_hq_1_owner_email VARCHAR(512),		
		a__acct_univ_hq_1_owner_name VARCHAR(512),		
		a__acct_univ_hq_1_record_type VARCHAR(512),		
		a__acct_univ_hq_1_state VARCHAR(512),		
		a__acct_univ_hq_2_city VARCHAR(512),		
		a__acct_univ_hq_2_id VARCHAR(512),		
		a__acct_univ_hq_2_key VARCHAR(512),		
		a__acct_univ_hq_2_key_account VARCHAR(512),		
		a__acct_univ_hq_2_name VARCHAR(512),		
		a__acct_univ_hq_2_name_number VARCHAR(512),		
		a__acct_univ_hq_2_owner_email VARCHAR(512),		
		a__acct_univ_hq_2_owner_name VARCHAR(512),		
		a__acct_univ_hq_2_record_type VARCHAR(512),		
		a__acct_univ_hq_2_state VARCHAR(512),		
		a__acct_univ_hq_3_city VARCHAR(512),		
		a__acct_univ_hq_3_id VARCHAR(512),		
		a__acct_univ_hq_3_key VARCHAR(512),		
		a__acct_univ_hq_3_key_account VARCHAR(512),		
		a__acct_univ_hq_3_name VARCHAR(512),		
		a__acct_univ_hq_3_name_number VARCHAR(512),		
		a__acct_univ_hq_3_owner_email VARCHAR(512),		
		a__acct_univ_hq_3_owner_name VARCHAR(512),		
		a__acct_univ_hq_3_record_type VARCHAR(512),		
		a__acct_univ_hq_3_state VARCHAR(512),		
		a__acct_univ_hq_4_city VARCHAR(512),		
		a__acct_univ_hq_4_id VARCHAR(512),		
		a__acct_univ_hq_4_key VARCHAR(512),		
		a__acct_univ_hq_4_key_account VARCHAR(512),		
		a__acct_univ_hq_4_name VARCHAR(512),		
		a__acct_univ_hq_4_name_number VARCHAR(512),		
		a__acct_univ_hq_4_owner_email VARCHAR(512),		
		a__acct_univ_hq_4_owner_name VARCHAR(512),		
		a__acct_univ_hq_4_record_type VARCHAR(512),		
		a__acct_univ_hq_4_state VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__acct_univ_hier_dim_id VARCHAR(512),		
		l__acct_univ_hq_1_name__acct_univ_hq_1_url VARCHAR(512),		
		l__acct_univ_hq_1_name_number__acct_univ_hq_1_url2 VARCHAR(512),		
		l__acct_univ_hq_2_name__acct_univ_hq_2_url VARCHAR(512),		
		l__acct_univ_hq_2_name_number__acct_univ_hq_2_url2 VARCHAR(512),		
		l__acct_univ_hq_3_name__acct_univ_hq_3_url VARCHAR(512),		
		l__acct_univ_hq_3_name_number__acct_univ_hq_3_url2 VARCHAR(512),		
		l__acct_univ_hq_4_name__acct_univ_hq_4_url VARCHAR(512),		
		l__acct_univ_hq_4_name_number__acct_univ_hq_4_url2 VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_univ_hq_by_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_univ_hq_by_dim" (				
		a__acct_univ_hq_by_level VARCHAR(512),		
		a__acct_univ_hq_type VARCHAR(512),		
		cp__acct_univ_hq_by_dim_id VARCHAR(512),		
		f__acct_univ_hq_by_count NUMERIC(12,2),		
		r__acct_hq_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_univ_ka1_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_univ_ka1_dim" (				
		a__acct_univ_ka1_city VARCHAR(512),		
		a__acct_univ_ka1_custom_1 VARCHAR(512),		
		a__acct_univ_ka1_custom_2 VARCHAR(512),		
		a__acct_univ_ka1_custom_3 VARCHAR(512),		
		a__acct_univ_ka1_custom_4 VARCHAR(512),		
		a__acct_univ_ka1_custom_5 VARCHAR(512),		
		a__acct_univ_ka1_id VARCHAR(512),		
		a__acct_univ_ka1_key VARCHAR(512),		
		a__acct_univ_ka1_key_account VARCHAR(512),		
		a__acct_univ_ka1_level VARCHAR(512),		
		a__acct_univ_ka1_name VARCHAR(512),		
		a__acct_univ_ka1_name_number VARCHAR(512),		
		a__acct_univ_ka1_owner_email VARCHAR(512),		
		a__acct_univ_ka1_owner_first_name VARCHAR(512),		
		a__acct_univ_ka1_owner_id VARCHAR(512),		
		a__acct_univ_ka1_owner_last_name VARCHAR(512),		
		a__acct_univ_ka1_owner_name VARCHAR(512),		
		a__acct_univ_ka1_record_type VARCHAR(512),		
		a__acct_univ_ka1_state VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__territory_key VARCHAR(512),		
		a__territory_name VARCHAR(512),		
		cp__acct_univ_ka1_dim_id VARCHAR(512),		
		l__acct_univ_ka1_name__acct_univ_ka1_url VARCHAR(512),		
		l__acct_univ_ka1_name_number__acct_univ_ka1_url2 VARCHAR(512),		
		l__acct_univ_ka1_owner_name__acct_univ_ka1_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_univ_ka2_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_univ_ka2_dim" (				
		a__acct_univ_ka2_city VARCHAR(512),		
		a__acct_univ_ka2_custom_1 VARCHAR(512),		
		a__acct_univ_ka2_custom_2 VARCHAR(512),		
		a__acct_univ_ka2_custom_3 VARCHAR(512),		
		a__acct_univ_ka2_custom_4 VARCHAR(512),		
		a__acct_univ_ka2_custom_5 VARCHAR(512),		
		a__acct_univ_ka2_id VARCHAR(512),		
		a__acct_univ_ka2_key VARCHAR(512),		
		a__acct_univ_ka2_key_account VARCHAR(512),		
		a__acct_univ_ka2_level VARCHAR(512),		
		a__acct_univ_ka2_name VARCHAR(512),		
		a__acct_univ_ka2_name_number VARCHAR(512),		
		a__acct_univ_ka2_owner_email VARCHAR(512),		
		a__acct_univ_ka2_owner_first_name VARCHAR(512),		
		a__acct_univ_ka2_owner_id VARCHAR(512),		
		a__acct_univ_ka2_owner_last_name VARCHAR(512),		
		a__acct_univ_ka2_owner_name VARCHAR(512),		
		a__acct_univ_ka2_record_type VARCHAR(512),		
		a__acct_univ_ka2_state VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__territory_key VARCHAR(512),		
		a__territory_name VARCHAR(512),		
		cp__acct_univ_ka2_dim_id VARCHAR(512),		
		l__acct_univ_ka2_name__acct_univ_ka2_url VARCHAR(512),		
		l__acct_univ_ka2_name_number__acct_univ_ka2_url2 VARCHAR(512),		
		l__acct_univ_ka2_owner_name__acct_univ_ka2_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_univ_mktg_group_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_univ_mktg_group_dim" (				
		a__acct_univ_mktg_group_city VARCHAR(512),		
		a__acct_univ_mktg_group_code VARCHAR(512),		
		a__acct_univ_mktg_group_custom_1 VARCHAR(512),		
		a__acct_univ_mktg_group_custom_2 VARCHAR(512),		
		a__acct_univ_mktg_group_custom_3 VARCHAR(512),		
		a__acct_univ_mktg_group_custom_4 VARCHAR(512),		
		a__acct_univ_mktg_group_custom_5 VARCHAR(512),		
		a__acct_univ_mktg_group_id VARCHAR(512),		
		a__acct_univ_mktg_group_key VARCHAR(512),		
		a__acct_univ_mktg_group_key_account VARCHAR(512),		
		a__acct_univ_mktg_group_name VARCHAR(512),		
		a__acct_univ_mktg_group_name_number VARCHAR(512),		
		a__acct_univ_mktg_group_owner_email VARCHAR(512),		
		a__acct_univ_mktg_group_owner_first_name VARCHAR(512),		
		a__acct_univ_mktg_group_owner_id VARCHAR(512),		
		a__acct_univ_mktg_group_owner_last_name VARCHAR(512),		
		a__acct_univ_mktg_group_owner_name VARCHAR(512),		
		a__acct_univ_mktg_group_record_type VARCHAR(512),		
		a__acct_univ_mktg_group_state VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__acct_univ_mktg_group_dim_id VARCHAR(512),		
		l__acct_univ_mktg_group_name__acct_univ_mktg_group_url VARCHAR(512),		
		l__acct_univ_mktg_group_name_number__acct_univ_mktg_group_url2 VARCHAR(512),		
		l__acct_univ_mktg_group_owner_name__acct_univ_mktg_group_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_univ_owner_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_univ_owner_dim" (				
		a__acct_univ_owner_active_indicator VARCHAR(512),		
		a__acct_univ_owner_city VARCHAR(512),		
		a__acct_univ_owner_company VARCHAR(512),		
		a__acct_univ_owner_country VARCHAR(512),		
		a__acct_univ_owner_custom_1 VARCHAR(512),		
		a__acct_univ_owner_custom_2 VARCHAR(512),		
		a__acct_univ_owner_custom_3 VARCHAR(512),		
		a__acct_univ_owner_custom_4 VARCHAR(512),		
		a__acct_univ_owner_custom_5 VARCHAR(512),		
		a__acct_univ_owner_department VARCHAR(512),		
		a__acct_univ_owner_dim_granularity VARCHAR(512),		
		a__acct_univ_owner_dim_name VARCHAR(512),		
		a__acct_univ_owner_division VARCHAR(512),		
		a__acct_univ_owner_do_not_call VARCHAR(512),		
		a__acct_univ_owner_do_not_email VARCHAR(512),		
		a__acct_univ_owner_email VARCHAR(512),		
		a__acct_univ_owner_email_key VARCHAR(512),		
		a__acct_univ_owner_fax VARCHAR(512),		
		a__acct_univ_owner_first_name VARCHAR(512),		
		a__acct_univ_owner_home_phone VARCHAR(512),		
		a__acct_univ_owner_id VARCHAR(512),		
		a__acct_univ_owner_key_1 VARCHAR(512),		
		a__acct_univ_owner_key_2 VARCHAR(512),		
		a__acct_univ_owner_last_name VARCHAR(512),		
		a__acct_univ_owner_level VARCHAR(512),		
		a__acct_univ_owner_manager_email VARCHAR(512),		
		a__acct_univ_owner_manager_first_name VARCHAR(512),		
		a__acct_univ_owner_manager_id VARCHAR(512),		
		a__acct_univ_owner_manager_last_name VARCHAR(512),		
		a__acct_univ_owner_manager_name VARCHAR(512),		
		a__acct_univ_owner_mobile_phone VARCHAR(512),		
		a__acct_univ_owner_name VARCHAR(512),		
		a__acct_univ_owner_other_phone VARCHAR(512),		
		a__acct_univ_owner_owner_email VARCHAR(512),		
		a__acct_univ_owner_owner_first_name VARCHAR(512),		
		a__acct_univ_owner_owner_id VARCHAR(512),		
		a__acct_univ_owner_owner_last_name VARCHAR(512),		
		a__acct_univ_owner_owner_name VARCHAR(512),		
		a__acct_univ_owner_phone VARCHAR(512),		
		a__acct_univ_owner_profile_name VARCHAR(512),		
		a__acct_univ_owner_record_type VARCHAR(512),		
		a__acct_univ_owner_role_name VARCHAR(512),		
		a__acct_univ_owner_salutation VARCHAR(512),		
		a__acct_univ_owner_source_file VARCHAR(512),		
		a__acct_univ_owner_state VARCHAR(512),		
		a__acct_univ_owner_street VARCHAR(512),		
		a__acct_univ_owner_title VARCHAR(512),		
		a__acct_univ_owner_work_email VARCHAR(512),		
		a__acct_univ_owner_work_phone VARCHAR(512),		
		a__acct_univ_owner_zip VARCHAR(512),		
		a__acct_univ_owner_zip5 VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__acct_univ_owner_dim_id VARCHAR(512),		
		l__acct_univ_owner_dim_name__acct_univ_owner_dim_url VARCHAR(512),		
		l__acct_univ_owner_manager_name__acct_univ_owner_manager_url VARCHAR(512),		
		l__acct_univ_owner_name__acct_univ_owner_url VARCHAR(512),		
		l__acct_univ_owner_owner_name__acct_univ_owner_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_acct_univ_retail_dim --				
--------------------------------------------------				
CREATE TABLE "gd_acct_univ_retail_dim" (				
		a__acct_univ_annual_volume VARCHAR(512),		
		a__acct_univ_bdn_add_date VARCHAR(512),		
		a__acct_univ_bdn_change_date VARCHAR(512),		
		a__acct_univ_bdn_data_of_data VARCHAR(512),		
		a__acct_univ_bdn_id VARCHAR(512),		
		a__acct_univ_bdn_last_update VARCHAR(512),		
		a__acct_univ_company_size VARCHAR(512),		
		a__acct_univ_consumer_demographic VARCHAR(512),		
		a__acct_univ_customer_number VARCHAR(512),		
		a__acct_univ_dba_name VARCHAR(512),		
		a__acct_univ_distributor_name VARCHAR(512),		
		a__acct_univ_distributor_rep VARCHAR(512),		
		a__acct_univ_distributor_team VARCHAR(512),		
		a__acct_univ_family_owner_code VARCHAR(512),		
		a__acct_univ_geo_precision_code VARCHAR(512),		
		a__acct_univ_immed_parent_county_fips VARCHAR(512),		
		a__acct_univ_immed_parent_state VARCHAR(512),		
		a__acct_univ_immed_parent_state_fips VARCHAR(512),		
		a__acct_univ_license_number VARCHAR(512),		
		a__acct_univ_outlet_number VARCHAR(512),		
		a__acct_univ_outlet_place_name VARCHAR(512),		
		a__acct_univ_primary_contact VARCHAR(512),		
		a__acct_univ_primary_email VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__acct_univ_retail_dim_id VARCHAR(512),		
		f__acct_univ_latitude NUMERIC(12,2),		
		f__acct_univ_longitude NUMERIC(12,2),		
		f__acct_univ_no_of_ftes NUMERIC(12,2),		
		f__acct_univ_no_of_registers NUMERIC(12,2),		
		f__acct_univ_number_of_locations NUMERIC(12,2),		
		f__acct_univ_square_footage NUMERIC(12,2),		
		f__acct_univ_weekly_volume NUMERIC(12,2)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_activity_fact --				
--------------------------------------------------				
CREATE TABLE "gd_activity_fact" (				
		a__activity_compliance VARCHAR(512),		
		a__activity_current VARCHAR(512),		
		a__activity_custom_1 VARCHAR(512),		
		a__activity_custom_2 VARCHAR(512),		
		a__activity_custom_3 VARCHAR(512),		
		a__activity_custom_4 VARCHAR(512),		
		a__activity_custom_5 VARCHAR(512),		
		a__activity_custom_checkbox_1 VARCHAR(512),		
		a__activity_custom_checkbox_2 VARCHAR(512),		
		a__activity_custom_picklist_1 VARCHAR(512),		
		a__activity_custom_picklist_2 VARCHAR(512),		
		a__activity_custom_picklist_3 VARCHAR(512),		
		a__activity_custom_picklist_4 VARCHAR(512),		
		a__activity_description VARCHAR(1020),		
		a__activity_fact_type VARCHAR(512),		
		a__activity_group VARCHAR(512),		
		a__activity_id VARCHAR(512),		
		a__activity_image_description VARCHAR(512),		
		a__activity_image_id VARCHAR(512),		
		a__activity_image_ind VARCHAR(512),		
		a__activity_image_name VARCHAR(512),		
		a__activity_name VARCHAR(512),		
		a__activity_status VARCHAR(512),		
		a__activity_subtype VARCHAR(512),		
		a__activity_type VARCHAR(512),		
		a__authorization_mandated VARCHAR(512),		
		a__authorization_new VARCHAR(512),		
		a__authorization_supported VARCHAR(512),		
		a__btg_listing VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__display_location VARCHAR(512),		
		a__event_brand_promoted VARCHAR(512),		
		a__event_erf_received VARCHAR(512),		
		a__event_featured_drink VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__incentive_results VARCHAR(512),		
		a__megacall_contacted_email VARCHAR(512),		
		a__megacall_contacted_name VARCHAR(512),		
		a__megacall_contacted_title VARCHAR(512),		
		a__megacall_geocode VARCHAR(512),		
		a__megacall_id VARCHAR(512),		
		a__megacall_key VARCHAR(512),		
		a__megacall_latitude VARCHAR(512),		
		a__megacall_longitude VARCHAR(512),		
		a__megacall_name VARCHAR(512),		
		a__megacall_notes VARCHAR(1020),		
		a__megacall_status VARCHAR(512),		
		a__megacall_type VARCHAR(512),		
		a__menu_drink_name VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__objective_results VARCHAR(512),		
		a__package_type VARCHAR(512),		
		a__placement_number VARCHAR(512),		
		a__placement_type VARCHAR(512),		
		a__pos_approved VARCHAR(512),		
		a__pos_item_name VARCHAR(512),		
		a__presentation_action VARCHAR(512),		
		a__presentation_proposed_usage VARCHAR(512),		
		a__presentation_reaction VARCHAR(512),		
		a__presentation_tasted VARCHAR(512),		
		a__program_name VARCHAR(512),		
		a__program_record_type VARCHAR(512),		
		a__scan_advertised VARCHAR(512),		
		a__scan_display VARCHAR(512),		
		a__staff_training_pos VARCHAR(512),		
		a__staff_training_tasted VARCHAR(512),		
		a__task_account_call VARCHAR(512),		
		a__task_call_type VARCHAR(512),		
		a__task_priority VARCHAR(512),		
		a__task_subject VARCHAR(512),		
		cp__activity_fact_id VARCHAR(512),		
		d__createdate DATE,		
		d__enddate DATE,		
		d__fiscaldate DATE,		
		d__startdate DATE,		
		d__txndate DATE,		
		f__activity_custom_currency_1 NUMERIC(12,2),		
		f__activity_custom_currency_2 NUMERIC(12,2),		
		f__activity_fact_1 NUMERIC(15,4),		
		f__activity_fact_2 NUMERIC(15,4),		
		f__activity_physical_cases NUMERIC(15,4),		
		f__activity_price NUMERIC(15,4),		
		f__create_date INTEGER,		
		f__end_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__megacall_distance NUMERIC(15,4),		
		f__order_commit_bottles NUMERIC(15,4),		
		f__pos_quantity NUMERIC(15,4),		
		f__scan_amount NUMERIC(15,4),		
		f__staff_training_trained NUMERIC(15,4),		
		f__start_date INTEGER,		
		f__txn_date INTEGER,		
		l__activity_image_id__activity_dashboard_image VARCHAR(512),		
		l__activity_image_id__activity_table_image VARCHAR(512),		
		l__activity_image_name__activity_image_url VARCHAR(512),		
		l__activity_name__activity_url VARCHAR(512),		
		l__megacall_name__megacall_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__account_team_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__activity_goal_dim VARCHAR(512),		
		r__contact_dim VARCHAR(512),		
		r__currency_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__sales_division_dim VARCHAR(512),		
		r__spend_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_activity_goal_dim --				
--------------------------------------------------				
CREATE TABLE "gd_activity_goal_dim" (				
		a__activity_goal_dim_name VARCHAR(512),		
		a__activity_goal_group VARCHAR(512),		
		a__activity_goal_id VARCHAR(512),		
		a__activity_goal_name VARCHAR(512),		
		a__activity_goal_owner_first_name VARCHAR(512),		
		a__activity_goal_owner_id VARCHAR(512),		
		a__activity_goal_owner_last_email VARCHAR(512),		
		a__activity_goal_owner_last_name VARCHAR(512),		
		a__activity_goal_owner_name VARCHAR(512),		
		a__activity_goal_type VARCHAR(512),		
		a__activity_goal_user_first_name VARCHAR(512),		
		a__activity_goal_user_id VARCHAR(512),		
		a__activity_goal_user_last_email VARCHAR(512),		
		a__activity_goal_user_last_name VARCHAR(512),		
		a__activity_goal_user_name VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__activity_goal_dim_id VARCHAR(512),		
		d__enddate DATE,		
		d__startdate DATE,		
		f__activity_goal_quantity NUMERIC(10,4),		
		f__end_date INTEGER,		
		f__start_date INTEGER,		
		l__activity_goal_dim_name__activity_goal_dim_url VARCHAR(512),		
		l__activity_goal_name__activity_goal_url VARCHAR(512),		
		l__activity_goal_owner_name__activity_goal_owner_url VARCHAR(512),		
		l__activity_goal_user_name__activity_goal_user_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_competitor_dim --				
--------------------------------------------------				
CREATE TABLE "gd_competitor_dim" (				
		a__competitor_dim_granularity VARCHAR(512),		
		a__competitor_dim_name VARCHAR(512),		
		a__competitor_id VARCHAR(512),		
		a__competitor_key VARCHAR(512),		
		a__competitor_name VARCHAR(512),		
		a__competitor_size_key VARCHAR(512),		
		a__competitor_size_name VARCHAR(512),		
		a__competitor_type VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__competitor_dim_id VARCHAR(512),		
		l__competitor_dim_name__competitor_dim_url VARCHAR(512),		
		l__competitor_name__competitor_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_contact_dim --				
--------------------------------------------------				
CREATE TABLE "gd_contact_dim" (				
		a__contact_active_indicator VARCHAR(512),		
		a__contact_city VARCHAR(512),		
		a__contact_country VARCHAR(512),		
		a__contact_custom_1 VARCHAR(512),		
		a__contact_custom_2 VARCHAR(512),		
		a__contact_custom_3 VARCHAR(512),		
		a__contact_custom_4 VARCHAR(512),		
		a__contact_custom_5 VARCHAR(512),		
		a__contact_customer_key VARCHAR(512),		
		a__contact_department VARCHAR(512),		
		a__contact_dim_granularity VARCHAR(512),		
		a__contact_dim_name VARCHAR(512),		
		a__contact_do_not_call VARCHAR(512),		
		a__contact_do_not_email VARCHAR(512),		
		a__contact_email VARCHAR(512),		
		a__contact_email_key VARCHAR(512),		
		a__contact_fax VARCHAR(512),		
		a__contact_first_name VARCHAR(512),		
		a__contact_home_phone VARCHAR(512),		
		a__contact_id VARCHAR(512),		
		a__contact_last_name VARCHAR(512),		
		a__contact_level VARCHAR(512),		
		a__contact_manager_email VARCHAR(512),		
		a__contact_manager_first_name VARCHAR(512),		
		a__contact_manager_id VARCHAR(512),		
		a__contact_manager_last_name VARCHAR(512),		
		a__contact_manager_name VARCHAR(512),		
		a__contact_mobile_phone VARCHAR(512),		
		a__contact_name VARCHAR(512),		
		a__contact_other_phone VARCHAR(512),		
		a__contact_owner_email VARCHAR(512),		
		a__contact_owner_first_name VARCHAR(512),		
		a__contact_owner_id VARCHAR(512),		
		a__contact_owner_last_name VARCHAR(512),		
		a__contact_owner_name VARCHAR(512),		
		a__contact_phone VARCHAR(512),		
		a__contact_record_type VARCHAR(512),		
		a__contact_role VARCHAR(512),		
		a__contact_salesman_key VARCHAR(512),		
		a__contact_salutation VARCHAR(512),		
		a__contact_source_file VARCHAR(512),		
		a__contact_state VARCHAR(512),		
		a__contact_street VARCHAR(512),		
		a__contact_title VARCHAR(512),		
		a__contact_work_email VARCHAR(512),		
		a__contact_work_phone VARCHAR(512),		
		a__contact_zip VARCHAR(512),		
		a__contact_zip5 VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__contact_dim_id VARCHAR(512),		
		l__contact_dim_name__contact_dim_url VARCHAR(512),		
		l__contact_manager_name__contact_manager_url VARCHAR(512),		
		l__contact_name__contact_url VARCHAR(512),		
		l__contact_owner_name__contact_owner_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_currency_dim --				
--------------------------------------------------				
CREATE TABLE "gd_currency_dim" (				
		a__currency_corporate_iso_code VARCHAR(512),		
		a__currency_is_active VARCHAR(512),		
		a__currency_is_corporate VARCHAR(512),		
		a__currency_iso_code VARCHAR(512),		
		cp__currency_dim_id VARCHAR(512),		
		f__currency_conversion_rate NUMERIC(15,4),		
		f__currency_decimal_places NUMERIC(12,2)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_depletion_fact --				
--------------------------------------------------				
CREATE TABLE "gd_depletion_fact" (				
		a__created_date VARCHAR(512),		
		a__depletion_custom_1 VARCHAR(512),		
		a__depletion_custom_2 VARCHAR(512),		
		a__depletion_dist_item_number VARCHAR(512),		
		a__depletion_fact_name VARCHAR(512),		
		a__depletion_fact_type VARCHAR(512),		
		a__depletion_key VARCHAR(512),		
		a__depletion_rpt_current_ind VARCHAR(512),		
		a__depletion_source_file VARCHAR(512),		
		a__depletion_source_system VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__depletion_fact_id VARCHAR(512),		
		d__enddate DATE,		
		d__fiscaldate DATE,		
		d__startdate DATE,		
		d__txnaltdate DATE,		
		d__txndate DATE,		
		f__depletion_9l_cases NUMERIC(15,4),		
		f__depletion_adjustments NUMERIC(15,4),		
		f__depletion_breakage NUMERIC(12,2),		
		f__depletion_closing_balance NUMERIC(15,4),		
		f__depletion_fact_1 NUMERIC(15,4),		
		f__depletion_fact_2 NUMERIC(15,4),		
		f__depletion_fce_cases NUMERIC(15,4),		
		f__depletion_in_bond NUMERIC(15,4),		
		f__depletion_military_off_premise NUMERIC(12,2),		
		f__depletion_military_on_premise NUMERIC(12,2),		
		f__depletion_non_retail_sales NUMERIC(12,2),		
		f__depletion_on_order NUMERIC(15,4),		
		f__depletion_opening_balance NUMERIC(15,4),		
		f__depletion_primary_volume NUMERIC(15,4),		
		f__depletion_receipts NUMERIC(15,4),		
		f__depletion_samples NUMERIC(12,2),		
		f__depletion_secondary_volume NUMERIC(15,4),		
		f__depletion_sub_distributor_sales NUMERIC(12,2),		
		f__depletion_supplier_returns NUMERIC(12,2),		
		f__depletion_total_off_premise NUMERIC(12,2),		
		f__depletion_total_on_premise NUMERIC(12,2),		
		f__depletion_transfers_in NUMERIC(15,4),		
		f__depletion_transfers_out NUMERIC(15,4),		
		f__depletion_transportation NUMERIC(12,2),		
		f__depletion_unclassified_sales NUMERIC(12,2),		
		f__depletion_wholesale_sales NUMERIC(15,4),		
		f__depletionphysicalcases NUMERIC(15,4),		
		f__end_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__start_date INTEGER,		
		f__txn_alt_date INTEGER,		
		f__txn_date INTEGER,		
		l__depletion_fact_name__depletion_fact_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_distributor_hier_dim --				
--------------------------------------------------				
CREATE TABLE "gd_distributor_hier_dim" (				
		a__created_date VARCHAR(512),		
		a__dist_hq_1_city VARCHAR(512),		
		a__dist_hq_1_id VARCHAR(512),		
		a__dist_hq_1_key VARCHAR(512),		
		a__dist_hq_1_key_account VARCHAR(512),		
		a__dist_hq_1_name VARCHAR(512),		
		a__dist_hq_1_name_number VARCHAR(512),		
		a__dist_hq_1_owner_email VARCHAR(512),		
		a__dist_hq_1_owner_name VARCHAR(512),		
		a__dist_hq_1_record_type VARCHAR(512),		
		a__dist_hq_1_state VARCHAR(512),		
		a__dist_hq_2_city VARCHAR(512),		
		a__dist_hq_2_id VARCHAR(512),		
		a__dist_hq_2_key VARCHAR(512),		
		a__dist_hq_2_key_account VARCHAR(512),		
		a__dist_hq_2_name VARCHAR(512),		
		a__dist_hq_2_name_number VARCHAR(512),		
		a__dist_hq_2_owner_email VARCHAR(512),		
		a__dist_hq_2_owner_name VARCHAR(512),		
		a__dist_hq_2_record_type VARCHAR(512),		
		a__dist_hq_2_state VARCHAR(512),		
		a__dist_hq_3_city VARCHAR(512),		
		a__dist_hq_3_id VARCHAR(512),		
		a__dist_hq_3_key VARCHAR(512),		
		a__dist_hq_3_key_account VARCHAR(512),		
		a__dist_hq_3_name VARCHAR(512),		
		a__dist_hq_3_name_number VARCHAR(512),		
		a__dist_hq_3_owner_email VARCHAR(512),		
		a__dist_hq_3_owner_name VARCHAR(512),		
		a__dist_hq_3_record_type VARCHAR(512),		
		a__dist_hq_3_state VARCHAR(512),		
		a__dist_hq_4_city VARCHAR(512),		
		a__dist_hq_4_id VARCHAR(512),		
		a__dist_hq_4_key VARCHAR(512),		
		a__dist_hq_4_key_account VARCHAR(512),		
		a__dist_hq_4_name VARCHAR(512),		
		a__dist_hq_4_name_number VARCHAR(512),		
		a__dist_hq_4_owner_email VARCHAR(512),		
		a__dist_hq_4_owner_name VARCHAR(512),		
		a__dist_hq_4_record_type VARCHAR(512),		
		a__dist_hq_4_state VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__distributor_hier_dim_id VARCHAR(512),		
		l__dist_hq_1_name__dist_hq_1_url VARCHAR(512),		
		l__dist_hq_1_name_number__dist_hq_1_url2 VARCHAR(512),		
		l__dist_hq_2_name__dist_hq_2_url VARCHAR(512),		
		l__dist_hq_2_name_number__dist_hq_2_url2 VARCHAR(512),		
		l__dist_hq_3_name__dist_hq_3_url VARCHAR(512),		
		l__dist_hq_3_name_number__dist_hq_3_url2 VARCHAR(512),		
		l__dist_hq_4_name__dist_hq_4_url VARCHAR(512),		
		l__dist_hq_4_name_number__dist_hq_4_url2 VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_distributor_owner_dim --				
--------------------------------------------------				
CREATE TABLE "gd_distributor_owner_dim" (				
		a__created_date VARCHAR(512),		
		a__distributor_owner_active_indicator VARCHAR(512),		
		a__distributor_owner_city VARCHAR(512),		
		a__distributor_owner_company VARCHAR(512),		
		a__distributor_owner_country VARCHAR(512),		
		a__distributor_owner_custom_1 VARCHAR(512),		
		a__distributor_owner_custom_2 VARCHAR(512),		
		a__distributor_owner_custom_3 VARCHAR(512),		
		a__distributor_owner_custom_4 VARCHAR(512),		
		a__distributor_owner_custom_5 VARCHAR(512),		
		a__distributor_owner_department VARCHAR(512),		
		a__distributor_owner_dim_granularity VARCHAR(512),		
		a__distributor_owner_dim_name VARCHAR(512),		
		a__distributor_owner_division VARCHAR(512),		
		a__distributor_owner_do_not_call VARCHAR(512),		
		a__distributor_owner_do_not_email VARCHAR(512),		
		a__distributor_owner_email VARCHAR(512),		
		a__distributor_owner_email_key VARCHAR(512),		
		a__distributor_owner_fax VARCHAR(512),		
		a__distributor_owner_first_name VARCHAR(512),		
		a__distributor_owner_home_phone VARCHAR(512),		
		a__distributor_owner_id VARCHAR(512),		
		a__distributor_owner_key_1 VARCHAR(512),		
		a__distributor_owner_key_2 VARCHAR(512),		
		a__distributor_owner_last_name VARCHAR(512),		
		a__distributor_owner_level VARCHAR(512),		
		a__distributor_owner_manager_email VARCHAR(512),		
		a__distributor_owner_manager_first_name VARCHAR(512),		
		a__distributor_owner_manager_id VARCHAR(512),		
		a__distributor_owner_manager_last_name VARCHAR(512),		
		a__distributor_owner_manager_name VARCHAR(512),		
		a__distributor_owner_mobile_phone VARCHAR(512),		
		a__distributor_owner_name VARCHAR(512),		
		a__distributor_owner_other_phone VARCHAR(512),		
		a__distributor_owner_owner_email VARCHAR(512),		
		a__distributor_owner_owner_first_name VARCHAR(512),		
		a__distributor_owner_owner_id VARCHAR(512),		
		a__distributor_owner_owner_last_name VARCHAR(512),		
		a__distributor_owner_owner_name VARCHAR(512),		
		a__distributor_owner_phone VARCHAR(512),		
		a__distributor_owner_profile_name VARCHAR(512),		
		a__distributor_owner_record_type VARCHAR(512),		
		a__distributor_owner_role_name VARCHAR(512),		
		a__distributor_owner_salutation VARCHAR(512),		
		a__distributor_owner_source_file VARCHAR(512),		
		a__distributor_owner_state VARCHAR(512),		
		a__distributor_owner_street VARCHAR(512),		
		a__distributor_owner_title VARCHAR(512),		
		a__distributor_owner_work_email VARCHAR(512),		
		a__distributor_owner_work_phone VARCHAR(512),		
		a__distributor_owner_zip VARCHAR(512),		
		a__distributor_owner_zip5 VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__distributor_owner_dim_id VARCHAR(512),		
		l__distributor_owner_dim_name__distributor_owner_dim_url VARCHAR(512),		
		l__distributor_owner_manager_name__distributor_owner_manager_url VARCHAR(512),		
		l__distributor_owner_name__distributor_owner_url VARCHAR(512),		
		l__distributor_owner_owner_name__distributor_owner_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_event_call_fact --				
--------------------------------------------------				
CREATE TABLE "gd_event_call_fact" (				
		a__created_date VARCHAR(512),		
		a__event_call_activity_key VARCHAR(512),		
		a__event_call_date VARCHAR(512),		
		a__event_call_sequence VARCHAR(512),		
		a__event_call_time VARCHAR(512),		
		a__event_call_week VARCHAR(512),		
		a__event_call_year VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__event_call_fact_key VARCHAR(512),		
		d__createdate DATE,		
		d__enddate DATE,		
		d__fiscaldate DATE,		
		d__startdate DATE,		
		d__txndate DATE,		
		f__create_date INTEGER,		
		f__end_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__start_date INTEGER,		
		f__txn_date INTEGER,		
		r__account_call_fact VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__contact_dim VARCHAR(512),		
		r__event_fact VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_event_fact --				
--------------------------------------------------				
CREATE TABLE "gd_event_fact" (				
		a__created_date VARCHAR(512),		
		a__event_approved VARCHAR(512),		
		a__event_date VARCHAR(512),		
		a__event_description VARCHAR(512),		
		a__event_end_time VARCHAR(512),		
		a__event_group_type VARCHAR(512),		
		a__event_id VARCHAR(512),		
		a__event_is_all_day VARCHAR(512),		
		a__event_is_group VARCHAR(512),		
		a__event_is_past VARCHAR(512),		
		a__event_is_private VARCHAR(512),		
		a__event_is_recurrence VARCHAR(512),		
		a__event_key VARCHAR(512),		
		a__event_location VARCHAR(512),		
		a__event_recurrence_type VARCHAR(512),		
		a__event_rpt_current_ind VARCHAR(512),		
		a__event_show_as VARCHAR(512),		
		a__event_start_time VARCHAR(512),		
		a__event_subject VARCHAR(512),		
		a__event_type VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__event_fact_id VARCHAR(512),		
		d__createdate DATE,		
		d__fiscaldate DATE,		
		d__rptfromdate DATE,		
		d__txnaltdate DATE,		
		d__txndate DATE,		
		f__create_date INTEGER,		
		f__event_duration_min NUMERIC(15,4),		
		f__fiscal_date INTEGER,		
		f__rpt_from_date INTEGER,		
		f__txn_alt_date INTEGER,		
		f__txn_date INTEGER,		
		l__event_fact_id__event_fact_url VARCHAR(512),		
		l__event_id__event_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__contact_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_filter_list --				
--------------------------------------------------				
CREATE TABLE "gd_filter_list" (				
		a__filter_list_dim_description VARCHAR(1020),		
		a__filter_list_dim_group VARCHAR(512),		
		a__filter_list_dim_name VARCHAR(512),		
		a__filter_list_dim_package VARCHAR(512),		
		cp__filter_list_dim_id VARCHAR(512),		
		f__filter_list_dim_fact NUMERIC(12,2),		
		l__filter_list_dim_name__filter_list_dim_sort VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_fiscal_date_dim --				
--------------------------------------------------				
CREATE TABLE "gd_fiscal_date_dim" (				
		a__cm_id VARCHAR(512),		
		a__fd_holiday_english_name VARCHAR(512),		
		a__fd_holiday_ind VARCHAR(512),		
		a__fd_holiday_local_name VARCHAR(512),		
		a__fd_label_long VARCHAR(512),		
		a__fd_label_short VARCHAR(512),		
		a__fd_order INTEGER,		
		a__fd_type VARCHAR(512),		
		a__fd_weekend_ind VARCHAR(512),		
		a__fd_workday_ind VARCHAR(512),		
		a__fiscal_date_label VARCHAR(512),		
		a__fiscal_date_text VARCHAR(512),		
		a__fiscal_month_text VARCHAR(512),		
		a__fm_id VARCHAR(512),		
		a__fm_label_long VARCHAR(512),		
		a__fm_label_medium VARCHAR(512),		
		a__fm_label_short VARCHAR(512),		
		a__fm_order INTEGER,		
		a__fmy_label_long VARCHAR(512),		
		a__fmy_label_medium VARCHAR(512),		
		a__fmy_label_short VARCHAR(512),		
		a__fq_id VARCHAR(512),		
		a__fq_label_long VARCHAR(512),		
		a__fq_label_short VARCHAR(512),		
		a__fq_order INTEGER,		
		a__fqy_label_long VARCHAR(512),		
		a__fqy_label_short VARCHAR(512),		
		a__fw_id VARCHAR(512),		
		a__fw_label_long VARCHAR(512),		
		a__fw_label_short VARCHAR(512),		
		a__fw_order INTEGER,		
		a__fwy_label_long VARCHAR(512),		
		a__fwy_label_short VARCHAR(512),		
		a__fy_id VARCHAR(512),		
		a__fy_label VARCHAR(512),		
		a__fy_order INTEGER,		
		cp__fiscal_date_dim_id VARCHAR(512),		
		d__fiscaldate DATE,		
		d__txndate DATE,		
		f__cm_number INTEGER,		
		f__fd_dom_number INTEGER,		
		f__fd_doq_number INTEGER,		
		f__fd_dow_number INTEGER,		
		f__fd_doy_number INTEGER,		
		f__fd_number INTEGER,		
		f__fiscal_date INTEGER,		
		f__fm_moq_number INTEGER,		
		f__fm_moy_number INTEGER,		
		f__fm_number INTEGER,		
		f__fq_number INTEGER,		
		f__fq_qoy_number INTEGER,		
		f__fw_number INTEGER,		
		f__fw_woy_number INTEGER,		
		f__fy_number INTEGER,		
		f__txn_date INTEGER,		
		l__fm_label_long__fm_label_long_order INTEGER,		
		l__fm_label_medium__fm_label_medium_order INTEGER,		
		l__fmy_label_long__fmy_label_long_order INTEGER,		
		l__fmy_label_medium__fmy_label_medium_order INTEGER		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_geography_dim --				
--------------------------------------------------				
CREATE TABLE "gd_geography_dim" (				
		a__company_custom_1 VARCHAR(512),		
		a__company_custom_2 VARCHAR(512),		
		a__company_id VARCHAR(512),		
		a__company_key VARCHAR(512),		
		a__company_name VARCHAR(512),		
		a__distributor_account_groups VARCHAR(512),		
		a__distributor_account_key VARCHAR(512),		
		a__distributor_city VARCHAR(512),		
		a__distributor_country VARCHAR(512),		
		a__distributor_county VARCHAR(512),		
		a__distributor_custom_1 VARCHAR(512),		
		a__distributor_custom_10 VARCHAR(512),		
		a__distributor_custom_2 VARCHAR(512),		
		a__distributor_custom_3 VARCHAR(512),		
		a__distributor_custom_4 VARCHAR(512),		
		a__distributor_custom_5 VARCHAR(512),		
		a__distributor_custom_6 VARCHAR(512),		
		a__distributor_custom_7 VARCHAR(512),		
		a__distributor_custom_8 VARCHAR(512),		
		a__distributor_custom_9 VARCHAR(512),		
		a__distributor_custom_checkbox_1 VARCHAR(512),		
		a__distributor_custom_checkbox_2 VARCHAR(512),		
		a__distributor_custom_date_1 VARCHAR(512),		
		a__distributor_custom_date_2 VARCHAR(512),		
		a__distributor_description VARCHAR(512),		
		a__distributor_id VARCHAR(512),		
		a__distributor_key_account VARCHAR(512),		
		a__distributor_level VARCHAR(512),		
		a__distributor_name VARCHAR(512),		
		a__distributor_name_number VARCHAR(512),		
		a__distributor_owner_email VARCHAR(512),		
		a__distributor_owner_first_name VARCHAR(512),		
		a__distributor_owner_id VARCHAR(512),		
		a__distributor_owner_last_name VARCHAR(512),		
		a__distributor_owner_name VARCHAR(512),		
		a__distributor_phone VARCHAR(512),		
		a__distributor_rank VARCHAR(512),		
		a__distributor_record_type VARCHAR(512),		
		a__distributor_shipping_city VARCHAR(512),		
		a__distributor_shipping_country VARCHAR(512),		
		a__distributor_shipping_state VARCHAR(512),		
		a__distributor_shipping_street VARCHAR(512),		
		a__distributor_shipping_zip VARCHAR(512),		
		a__distributor_shipping_zip5 VARCHAR(512),		
		a__distributor_source_file VARCHAR(512),		
		a__distributor_state VARCHAR(512),		
		a__distributor_street VARCHAR(512),		
		a__distributor_zip VARCHAR(512),		
		a__distributor_zip5 VARCHAR(512),		
		a__division_custom_1 VARCHAR(512),		
		a__division_custom_2 VARCHAR(512),		
		a__division_custom_3 VARCHAR(512),		
		a__division_custom_4 VARCHAR(512),		
		a__division_custom_5 VARCHAR(512),		
		a__division_id VARCHAR(512),		
		a__division_key VARCHAR(512),		
		a__division_name VARCHAR(512),		
		a__geography_dim_granularity VARCHAR(512),		
		a__geography_dim_name VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__region_custom_1 VARCHAR(512),		
		a__region_custom_2 VARCHAR(512),		
		a__region_id VARCHAR(512),		
		a__region_key VARCHAR(512),		
		a__region_name VARCHAR(512),		
		a__territory_custom_1 VARCHAR(512),		
		a__territory_custom_2 VARCHAR(512),		
		a__territory_custom_3 VARCHAR(512),		
		a__territory_custom_4 VARCHAR(512),		
		a__territory_custom_5 VARCHAR(512),		
		a__territory_id VARCHAR(512),		
		a__territory_key VARCHAR(512),		
		a__territory_name VARCHAR(512),		
		cp__geography_dim_id VARCHAR(512),		
		d__createdate DATE,		
		f__create_date INTEGER,		
		l__distributor_name__distributor_url VARCHAR(512),		
		l__distributor_name_number__distributor_url2 VARCHAR(512),		
		l__distributor_owner_name__distributor_owner_url VARCHAR(512),		
		l__geography_dim_name__geography_dim_url VARCHAR(512),		
		l__territory_name__territory_url VARCHAR(512),		
		r__distributor_hier_dim VARCHAR(512),		
		r__distributor_owner_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_inventory_fact --				
--------------------------------------------------				
CREATE TABLE "gd_inventory_fact" (				
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__inventory_fact_name VARCHAR(512),		
		a__inventory_id VARCHAR(512),		
		a__inventory_item_key VARCHAR(512),		
		a__inventory_location VARCHAR(512),		
		a__inventory_name VARCHAR(512),		
		a__inventory_warehouse VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__inventory_fact_id VARCHAR(512),		
		d__fiscaldate DATE,		
		d__txndate DATE,		
		f__fiscal_date INTEGER,		
		f__inventory_9l_cases NUMERIC(15,4),		
		f__inventory_fce_cases NUMERIC(15,4),		
		f__inventory_primary_volume NUMERIC(15,4),		
		f__inventory_quantity NUMERIC(15,4),		
		f__inventory_quantity_on_hand NUMERIC(15,4),		
		f__inventory_quantity_on_order NUMERIC(15,4),		
		f__inventory_secondary_volume NUMERIC(15,4),		
		f__txn_date INTEGER,		
		l__inventory_fact_name__inventory_fact_url VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_kpi_dim --				
--------------------------------------------------				
CREATE TABLE "gd_kpi_dim" (				
		a__created_date VARCHAR(512),		
		a__kpi_active_indicator VARCHAR(512),		
		a__kpi_brand_key VARCHAR(512),		
		a__kpi_brand_name VARCHAR(512),		
		a__kpi_category VARCHAR(512),		
		a__kpi_dim_granularity VARCHAR(512),		
		a__kpi_dim_name VARCHAR(1020),		
		a__kpi_full_book VARCHAR(512),		
		a__kpi_id VARCHAR(512),		
		a__kpi_item_name VARCHAR(512),		
		a__kpi_item_number VARCHAR(512),		
		a__kpi_key VARCHAR(512),		
		a__kpi_label_key VARCHAR(512),		
		a__kpi_label_name VARCHAR(512),		
		a__kpi_name VARCHAR(512),		
		a__kpi_owner_email VARCHAR(512),		
		a__kpi_owner_first_name VARCHAR(512),		
		a__kpi_owner_id VARCHAR(512),		
		a__kpi_owner_last_name VARCHAR(512),		
		a__kpi_owner_name VARCHAR(512),		
		a__kpi_product_dim_id VARCHAR(512),		
		a__kpi_product_granularity VARCHAR(512),		
		a__kpi_product_name VARCHAR(512),		
		a__kpi_question VARCHAR(1020),		
		a__kpi_sales_driver VARCHAR(512),		
		a__kpi_supplier_id VARCHAR(512),		
		a__kpi_supplier_key VARCHAR(512),		
		a__kpi_supplier_name VARCHAR(512),		
		a__kpi_time_frame VARCHAR(512),		
		a__kpi_update_frequency VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__kpi_dim_id VARCHAR(512),		
		d__enddate DATE,		
		d__startdate DATE,		
		f__end_date INTEGER,		
		f__kpi_frequency_days NUMERIC(10,4),		
		f__kpi_weight NUMERIC(10,4),		
		f__start_date INTEGER,		
		l__kpi_dim_name__kpi_dim_url VARCHAR(512),		
		l__kpi_name__kpi_url VARCHAR(512),		
		l__kpi_owner_name__kpi_owner_url VARCHAR(512),		
		r__kpi_segment_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_kpi_fact --				
--------------------------------------------------				
CREATE TABLE "gd_kpi_fact" (				
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_quarter VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__kpi_fact_name VARCHAR(512),		
		a__kpi_observation_account_bdn_id VARCHAR(512),		
		a__kpi_observation_account_full_book VARCHAR(512),		
		a__kpi_observation_audit_indicator VARCHAR(512),		
		a__kpi_observation_audit_time VARCHAR(512),		
		a__kpi_observation_audit_user_email VARCHAR(512),		
		a__kpi_observation_audit_user_first_name VARCHAR(512),		
		a__kpi_observation_audit_user_id VARCHAR(512),		
		a__kpi_observation_audit_user_last_name VARCHAR(512),		
		a__kpi_observation_audit_user_name VARCHAR(512),		
		a__kpi_observation_dummy VARCHAR(512),		
		a__kpi_observation_id VARCHAR(512),		
		a__kpi_observation_incorrect VARCHAR(512),		
		a__kpi_observation_invalid VARCHAR(512),		
		a__kpi_observation_kpi_affirmed VARCHAR(512),		
		a__kpi_observation_kpi_affirmed_string VARCHAR(512),		
		a__kpi_observation_most_recent VARCHAR(512),		
		a__kpi_observation_name VARCHAR(512),		
		a__kpi_observation_number VARCHAR(512),		
		a__kpi_observation_scored VARCHAR(512),		
		a__kpi_observation_supplier_key VARCHAR(512),		
		a__kpi_observation_time VARCHAR(512),		
		a__kpi_observation_user_email VARCHAR(512),		
		a__kpi_observation_user_first_name VARCHAR(512),		
		a__kpi_observation_user_id VARCHAR(512),		
		a__kpi_observation_user_last_name VARCHAR(512),		
		a__kpi_observation_user_name VARCHAR(512),		
		a__kpi_rpt_current_ind VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__kpi_fact_id VARCHAR(512),		
		d__fiscaldate DATE,		
		d__rptfromdate DATE,		
		d__txnaltdate DATE,		
		d__txndate DATE,		
		f__fiscal_date INTEGER,		
		f__kpi_observation_account_payout NUMERIC(12,2),		
		f__kpi_observation_account_payout_factor NUMERIC(15,4),		
		f__kpi_observation_account_payout_weight NUMERIC(15,4),		
		f__kpi_observation_kpi_payout NUMERIC(12,2),		
		f__kpi_observation_overall_payout_factor NUMERIC(15,4),		
		f__kpi_observation_payout NUMERIC(12,2),		
		f__kpi_observation_staleness INTEGER,		
		f__kpi_observation_target NUMERIC(15,4),		
		f__kpi_observation_valid NUMERIC(15,4),		
		f__kpi_observation_value NUMERIC(15,4),		
		f__kpi_observation_weight NUMERIC(15,4),		
		f__rpt_from_date INTEGER,		
		f__txn_alt_date INTEGER,		
		f__txn_date INTEGER,		
		l__kpi_fact_name__kpi_fact_url VARCHAR(512),		
		l__kpi_observation_audit_user_name__kpi_observation_audit_user_url VARCHAR(512),		
		l__kpi_observation_name__kpi_observation_url VARCHAR(512),		
		l__kpi_observation_user_name__kpi_observation_user_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__kpi_dim VARCHAR(512),		
		r__kpi_incentive_fact VARCHAR(512),		
		r__kpi_segment_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_kpi_incentive_fact --				
--------------------------------------------------				
CREATE TABLE "gd_kpi_incentive_fact" (				
		a__created_date VARCHAR(512),		
		a__kpi_incentive_account_bdn_id VARCHAR(512),		
		a__kpi_incentive_fact_name VARCHAR(512),		
		a__kpi_incentive_fiscal_quarter VARCHAR(512),		
		a__kpi_incentive_fiscal_year VARCHAR(512),		
		a__kpi_incentive_id VARCHAR(512),		
		a__kpi_incentive_key VARCHAR(512),		
		a__kpi_incentive_name VARCHAR(512),		
		a__kpi_incentive_supplier_key VARCHAR(512),		
		a__kpi_incentive_time_frame VARCHAR(512),		
		a__kpi_incentive_time_period VARCHAR(512),		
		a__kpi_scorecard_id VARCHAR(512),		
		a__kpi_scorecard_name VARCHAR(512),		
		a__kpi_scorecard_time_frame VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__kpi_incentive_fact_id VARCHAR(512),		
		d__fiscaldate DATE,		
		d__txndate DATE,		
		f__fiscal_date INTEGER,		
		f__kpi_incentive_amount NUMERIC(12,2),		
		f__kpi_incentive_number_affirmed NUMERIC(15,4),		
		f__kpi_incentive_observed_kpis NUMERIC(15,4),		
		f__kpi_incentive_payout_factor NUMERIC(15,4),		
		f__kpi_incentive_percent_affirmed NUMERIC(15,4),		
		f__kpi_incentive_percent_target_achieved NUMERIC(15,4),		
		f__kpi_incentive_target NUMERIC(15,4),		
		f__kpi_incentive_target_kpis NUMERIC(15,4),		
		f__kpi_incentive_total_weight NUMERIC(15,4),		
		f__kpi_scorecard_affirmed_kpis NUMERIC(15,4),		
		f__kpi_scorecard_observed_kpis NUMERIC(15,4),		
		f__kpi_scorecard_overall_payout_factor NUMERIC(15,4),		
		f__kpi_scorecard_percent_target_achieved NUMERIC(15,4),		
		f__kpi_scorecard_target_kpis NUMERIC(15,4),		
		f__txn_date INTEGER,		
		l__kpi_incentive_fact_name__kpi_incentive_fact_url VARCHAR(512),		
		l__kpi_incentive_name__kpi_incentive_url VARCHAR(512),		
		l__kpi_scorecard_name__kpi_scorecard_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__kpi_segment_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_kpi_segment_dim --				
--------------------------------------------------				
CREATE TABLE "gd_kpi_segment_dim" (				
		a__created_date VARCHAR(512),		
		a__kpi_segment_code VARCHAR(512),		
		a__kpi_segment_dim_level VARCHAR(512),		
		a__kpi_segment_dim_name VARCHAR(512),		
		a__kpi_segment_id VARCHAR(512),		
		a__kpi_segment_level VARCHAR(512),		
		a__kpi_segment_name VARCHAR(512),		
		a__kpi_segment_type VARCHAR(512),		
		a__kpi_super_segment_code VARCHAR(512),		
		a__kpi_super_segment_id VARCHAR(512),		
		a__kpi_super_segment_level VARCHAR(512),		
		a__kpi_super_segment_name VARCHAR(512),		
		a__kpi_super_segment_type VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__kpi_segment_dim_id VARCHAR(512),		
		l__kpi_segment_dim_name__kpi_segment_dim_url VARCHAR(512),		
		l__kpi_segment_name__kpi_segment_url VARCHAR(512),		
		l__kpi_super_segment_name__kpi_super_segment_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_managed_by_dim --				
--------------------------------------------------				
CREATE TABLE "gd_managed_by_dim" (				
		a__managed_by_level VARCHAR(512),		
		cp__managed_by_dim_id VARCHAR(512),		
		f__managed_by_count NUMERIC(12,2),		
		r__manager_dim VARCHAR(512),		
		r__person_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_manager_dim --				
--------------------------------------------------				
CREATE TABLE "gd_manager_dim" (				
		a__created_date VARCHAR(512),		
		a__manager_active_indicator VARCHAR(512),		
		a__manager_city VARCHAR(512),		
		a__manager_company VARCHAR(512),		
		a__manager_country VARCHAR(512),		
		a__manager_custom_1 VARCHAR(512),		
		a__manager_custom_2 VARCHAR(512),		
		a__manager_custom_3 VARCHAR(512),		
		a__manager_custom_4 VARCHAR(512),		
		a__manager_custom_5 VARCHAR(512),		
		a__manager_department VARCHAR(512),		
		a__manager_dim_granularity VARCHAR(512),		
		a__manager_dim_name VARCHAR(512),		
		a__manager_division VARCHAR(512),		
		a__manager_do_not_call VARCHAR(512),		
		a__manager_do_not_email VARCHAR(512),		
		a__manager_email VARCHAR(512),		
		a__manager_email_key VARCHAR(512),		
		a__manager_fax VARCHAR(512),		
		a__manager_first_name VARCHAR(512),		
		a__manager_home_phone VARCHAR(512),		
		a__manager_id VARCHAR(512),		
		a__manager_key_1 VARCHAR(512),		
		a__manager_key_2 VARCHAR(512),		
		a__manager_last_name VARCHAR(512),		
		a__manager_level VARCHAR(512),		
		a__manager_mobile_phone VARCHAR(512),		
		a__manager_name VARCHAR(512),		
		a__manager_other_phone VARCHAR(512),		
		a__manager_owner_email VARCHAR(512),		
		a__manager_owner_first_name VARCHAR(512),		
		a__manager_owner_id VARCHAR(512),		
		a__manager_owner_last_name VARCHAR(512),		
		a__manager_owner_name VARCHAR(512),		
		a__manager_phone VARCHAR(512),		
		a__manager_profile_name VARCHAR(512),		
		a__manager_record_type VARCHAR(512),		
		a__manager_role_name VARCHAR(512),		
		a__manager_salutation VARCHAR(512),		
		a__manager_source_file VARCHAR(512),		
		a__manager_state VARCHAR(512),		
		a__manager_street VARCHAR(512),		
		a__manager_title VARCHAR(512),		
		a__manager_work_email VARCHAR(512),		
		a__manager_work_phone VARCHAR(512),		
		a__manager_zip VARCHAR(512),		
		a__manager_zip5 VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__manager_dim_id VARCHAR(512),		
		l__manager_dim_name__manager_dim_url VARCHAR(512),		
		l__manager_name__manager_url VARCHAR(512),		
		l__manager_owner_name__manager_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_media_fact --				
--------------------------------------------------				
CREATE TABLE "gd_media_fact" (				
		a__created_date VARCHAR(512),		
		a__media_attachment_id VARCHAR(512),		
		a__media_comments VARCHAR(512),		
		a__media_competitor_name VARCHAR(512),		
		a__media_competitor_type VARCHAR(512),		
		a__media_date VARCHAR(512),		
		a__media_date_time VARCHAR(512),		
		a__media_geocode VARCHAR(512),		
		a__media_heading VARCHAR(512),		
		a__media_key VARCHAR(512),		
		a__media_latitude VARCHAR(512),		
		a__media_location VARCHAR(512),		
		a__media_longitude VARCHAR(512),		
		a__media_name VARCHAR(512),		
		a__media_product_id VARCHAR(512),		
		a__media_product_name VARCHAR(512),		
		a__media_product_ownership VARCHAR(512),		
		a__media_product_size_key VARCHAR(512),		
		a__media_product_type VARCHAR(512),		
		a__media_record_type VARCHAR(512),		
		a__media_time VARCHAR(512),		
		a__media_type VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		cp__media_fact_id VARCHAR(512),		
		d__fiscaldate DATE,		
		d__txndate DATE,		
		f__fiscal_date INTEGER,		
		f__media_attachments NUMERIC(15,4),		
		f__media_distance NUMERIC(15,0),		
		f__txn_date INTEGER,		
		l__media_attachment_id__media_dashboard_image VARCHAR(1020),		
		l__media_attachment_id__media_table_image VARCHAR(1020),		
		l__media_name__media_url VARCHAR(512),		
		l__media_product_name__media_product_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__competitor_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_metric --				
--------------------------------------------------				
CREATE TABLE "gd_metric" (				
		a__metric_dim_name VARCHAR(512),		
		cp__metric_dim_id VARCHAR(512),		
		f__metric_dim_fact NUMERIC(12,2),		
		l__metric_dim_name__metric_dim_sort VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_objective_fact --				
--------------------------------------------------				
CREATE TABLE "gd_objective_fact" (				
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__objective_custom_1 VARCHAR(512),		
		a__objective_custom_2 VARCHAR(512),		
		a__objective_custom_3 VARCHAR(512),		
		a__objective_custom_4 VARCHAR(512),		
		a__objective_custom_5 VARCHAR(512),		
		a__objective_custom_checkbox_1 VARCHAR(512),		
		a__objective_custom_checkbox_2 VARCHAR(512),		
		a__objective_custom_picklist_1 VARCHAR(512),		
		a__objective_custom_picklist_2 VARCHAR(512),		
		a__objective_custom_picklist_3 VARCHAR(512),		
		a__objective_custom_picklist_4 VARCHAR(512),		
		a__objective_description VARCHAR(512),		
		a__objective_details VARCHAR(512),		
		a__objective_ext_id VARCHAR(512),		
		a__objective_fact_granularity VARCHAR(512),		
		a__objective_id VARCHAR(512),		
		a__objective_name VARCHAR(512),		
		a__objective_plan_description VARCHAR(512),		
		a__objective_plan_id VARCHAR(512),		
		a__objective_plan_import VARCHAR(512),		
		a__objective_plan_indicator VARCHAR(512),		
		a__objective_plan_name VARCHAR(512),		
		a__objective_priority VARCHAR(512),		
		a__objective_product_level VARCHAR(512),		
		a__objective_product_name VARCHAR(512),		
		a__objective_results VARCHAR(512),		
		a__objective_status VARCHAR(512),		
		a__objective_type VARCHAR(512),		
		a__rpt_current_ind VARCHAR(512),		
		cp__objective_fact_id VARCHAR(512),		
		d__createdate DATE,		
		d__enddate DATE,		
		d__fiscaldate DATE,		
		d__rptfromdate DATE,		
		d__rptthrudate DATE,		
		d__startdate DATE,		
		d__txnaltdate DATE,		
		d__txndate DATE,		
		f__create_date INTEGER,		
		f__end_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__objective_cases_per_year NUMERIC(15,4),		
		f__objective_custom_currency_1 NUMERIC(12,2),		
		f__objective_custom_currency_2 NUMERIC(12,2),		
		f__objective_fact_1 NUMERIC(15,4),		
		f__objective_fact_2 NUMERIC(15,4),		
		f__objective_sequence NUMERIC(12,2),		
		f__objective_survey_question_points NUMERIC(12,2),		
		f__rpt_from_date INTEGER,		
		f__rpt_thru_date INTEGER,		
		f__start_date INTEGER,		
		f__txn_alt_date INTEGER,		
		f__txn_date INTEGER,		
		l__objective_name__objective_url VARCHAR(512),		
		l__objective_plan_name__objective_plan_url VARCHAR(512),		
		r__account_call_fact VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__account_team_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__product_set_dim VARCHAR(512),		
		r__sales_division_dim VARCHAR(512),		
		r__sales_goal_fact VARCHAR(512),		
		r__spend_dim VARCHAR(512),		
		r__survey_dim VARCHAR(512),		
		r__survey_fact VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_person_dim --				
--------------------------------------------------				
CREATE TABLE "gd_person_dim" (				
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__person_active_indicator VARCHAR(512),		
		a__person_city VARCHAR(512),		
		a__person_company VARCHAR(512),		
		a__person_country VARCHAR(512),		
		a__person_custom_1 VARCHAR(512),		
		a__person_custom_2 VARCHAR(512),		
		a__person_custom_3 VARCHAR(512),		
		a__person_custom_4 VARCHAR(512),		
		a__person_custom_5 VARCHAR(512),		
		a__person_department VARCHAR(512),		
		a__person_dim_granularity VARCHAR(512),		
		a__person_dim_name VARCHAR(512),		
		a__person_division VARCHAR(512),		
		a__person_do_not_call VARCHAR(512),		
		a__person_do_not_email VARCHAR(512),		
		a__person_email VARCHAR(512),		
		a__person_email_key VARCHAR(512),		
		a__person_fax VARCHAR(512),		
		a__person_first_name VARCHAR(512),		
		a__person_home_phone VARCHAR(512),		
		a__person_id VARCHAR(512),		
		a__person_key_1 VARCHAR(512),		
		a__person_key_2 VARCHAR(512),		
		a__person_last_name VARCHAR(512),		
		a__person_level VARCHAR(512),		
		a__person_manager_email VARCHAR(512),		
		a__person_manager_first_name VARCHAR(512),		
		a__person_manager_id VARCHAR(512),		
		a__person_manager_last_name VARCHAR(512),		
		a__person_manager_name VARCHAR(512),		
		a__person_mobile_phone VARCHAR(512),		
		a__person_name VARCHAR(512),		
		a__person_other_phone VARCHAR(512),		
		a__person_owner_email VARCHAR(512),		
		a__person_owner_first_name VARCHAR(512),		
		a__person_owner_id VARCHAR(512),		
		a__person_owner_last_name VARCHAR(512),		
		a__person_owner_name VARCHAR(512),		
		a__person_phone VARCHAR(512),		
		a__person_profile_name VARCHAR(512),		
		a__person_record_type VARCHAR(512),		
		a__person_role_name VARCHAR(512),		
		a__person_salutation VARCHAR(512),		
		a__person_source_file VARCHAR(512),		
		a__person_state VARCHAR(512),		
		a__person_street VARCHAR(512),		
		a__person_title VARCHAR(512),		
		a__person_work_email VARCHAR(512),		
		a__person_work_phone VARCHAR(512),		
		a__person_zip VARCHAR(512),		
		a__person_zip5 VARCHAR(512),		
		cp__person_dim_id VARCHAR(512),		
		l__person_dim_name__person_dim_url VARCHAR(512),		
		l__person_manager_name__person_manager_url VARCHAR(512),		
		l__person_name__person_url VARCHAR(512),		
		l__person_owner_name__person_owner_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_pricing_fact --				
--------------------------------------------------				
CREATE TABLE "gd_pricing_fact" (				
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__price_header_custom_1 VARCHAR(512),		
		a__price_header_custom_2 VARCHAR(512),		
		a__price_header_custom_3 VARCHAR(512),		
		a__price_header_custom_4 VARCHAR(512),		
		a__price_header_custom_5 VARCHAR(512),		
		a__price_header_di_dom VARCHAR(512),		
		a__price_header_end_date VARCHAR(512),		
		a__price_header_id VARCHAR(512),		
		a__price_header_name VARCHAR(512),		
		a__price_header_split_case_charge_type VARCHAR(512),		
		a__price_header_start_date VARCHAR(512),		
		a__price_header_status VARCHAR(512),		
		a__price_level_account_name VARCHAR(512),		
		a__price_level_account_type VARCHAR(512),		
		a__price_level_channel VARCHAR(512),		
		a__price_level_custom_1 VARCHAR(512),		
		a__price_level_custom_2 VARCHAR(512),		
		a__price_level_custom_3 VARCHAR(512),		
		a__price_level_custom_4 VARCHAR(512),		
		a__price_level_custom_5 VARCHAR(512),		
		a__price_level_description VARCHAR(512),		
		a__price_level_discount_level VARCHAR(512),		
		a__price_level_discount_type VARCHAR(512),		
		a__price_level_id VARCHAR(512),		
		a__price_level_name VARCHAR(512),		
		a__price_level_status VARCHAR(512),		
		a__price_level_term_end_date VARCHAR(512),		
		a__price_level_uom VARCHAR(512),		
		a__price_period_end_date VARCHAR(512),		
		a__price_period_id VARCHAR(512),		
		a__price_period_name VARCHAR(512),		
		a__price_period_start_date VARCHAR(512),		
		a__price_period_status VARCHAR(512),		
		a__price_period_term_end_date VARCHAR(512),		
		a__pricing_fact_level VARCHAR(512),		
		a__pricing_fact_name VARCHAR(512),		
		a__pricing_product_level VARCHAR(512),		
		a__pricing_product_name VARCHAR(512),		
		a__pricing_product_source VARCHAR(512),		
		a__product_set_id VARCHAR(512),		
		a__product_set_member_id VARCHAR(512),		
		a__product_set_member_name VARCHAR(512),		
		a__product_set_member_position VARCHAR(512),		
		a__product_set_name VARCHAR(512),		
		cp__pricing_fact_id VARCHAR(512),		
		d__enddate DATE,		
		d__fiscaldate DATE,		
		d__startdate DATE,		
		d__txndate DATE,		
		f__end_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__price_header_bank NUMERIC(12,2),		
		f__price_header_custom_currency_1 NUMERIC(12,2),		
		f__price_header_custom_currency_2 NUMERIC(12,2),		
		f__price_header_custom_fact_1 NUMERIC(15,4),		
		f__price_header_custom_fact_2 NUMERIC(15,4),		
		f__price_header_depletions_estimate NUMERIC(15,4),		
		f__price_header_fob NUMERIC(12,2),		
		f__price_header_freight NUMERIC(12,2),		
		f__price_header_front_line NUMERIC(12,2),		
		f__price_header_front_line_marging_dollars NUMERIC(12,2),		
		f__price_header_front_line_marging_percent NUMERIC(15,4),		
		f__price_header_laid_in_cost NUMERIC(12,2),		
		f__price_header_laid_in_net NUMERIC(12,2),		
		f__price_header_price_levels NUMERIC(12,2),		
		f__price_header_split_case_charge NUMERIC(12,2),		
		f__price_header_tax_1 NUMERIC(12,2),		
		f__price_header_tax_2 NUMERIC(12,2),		
		f__price_header_tax_3 NUMERIC(12,2),		
		f__price_header_units_per_case NUMERIC(12,2),		
		f__price_level_business_percent NUMERIC(15,5),		
		f__price_level_custom_currency_1 NUMERIC(12,2),		
		f__price_level_custom_currency_2 NUMERIC(12,2),		
		f__price_level_custom_fact_1 NUMERIC(15,4),		
		f__price_level_custom_fact_2 NUMERIC(15,4),		
		f__price_level_da NUMERIC(12,2),		
		f__price_level_depletion_estimate_cs NUMERIC(12,2),		
		f__price_level_discount NUMERIC(12,2),		
		f__price_level_dist_profit_bt_dol NUMERIC(12,2),		
		f__price_level_dist_profit_cs_dol NUMERIC(12,2),		
		f__price_level_dist_profit_pct NUMERIC(15,4),		
		f__price_level_feature_margin NUMERIC(15,4),		
		f__price_level_feature_markup NUMERIC(15,4),		
		f__price_level_feature_price NUMERIC(12,2),		
		f__price_level_free_goods_on_invoice NUMERIC(12,2),		
		f__price_level_price_per_bottle NUMERIC(12,2),		
		f__price_level_quantity NUMERIC(12,2),		
		f__price_level_retailer_price NUMERIC(12,2),		
		f__price_level_scan NUMERIC(12,2),		
		f__price_level_shelf_margin NUMERIC(15,4),		
		f__price_level_shelf_markup NUMERIC(15,4),		
		f__price_level_shelf_price NUMERIC(12,2),		
		f__price_level_spa NUMERIC(12,2),		
		f__price_level_split_case NUMERIC(12,2),		
		f__start_date INTEGER,		
		f__txn_date INTEGER,		
		l__price_header_name__price_header_url VARCHAR(512),		
		l__price_level_name__price_level_url VARCHAR(512),		
		l__price_period_name__price_period_url VARCHAR(512),		
		l__pricing_fact_name__pricing_fact_url VARCHAR(512),		
		l__product_set_member_name__product_set_member_url VARCHAR(512),		
		l__product_set_name__product_set_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__currency_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__spend_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_product_dim --				
--------------------------------------------------				
CREATE TABLE "gd_product_dim" (				
		a__brand_attachments VARCHAR(512),		
		a__brand_custom_1 VARCHAR(512),		
		a__brand_custom_2 VARCHAR(512),		
		a__brand_custom_picklist_1 VARCHAR(512),		
		a__brand_custom_picklist_2 VARCHAR(512),		
		a__brand_id VARCHAR(512),		
		a__brand_key VARCHAR(512),		
		a__brand_key_brand VARCHAR(512),		
		a__brand_name VARCHAR(512),		
		a__brand_ownership VARCHAR(512),		
		a__brand_size_id VARCHAR(512),		
		a__brand_size_key VARCHAR(512),		
		a__brand_size_name VARCHAR(512),		
		a__brand_visible VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__item_abv VARCHAR(512),		
		a__item_attachments VARCHAR(512),		
		a__item_available VARCHAR(512),		
		a__item_custom_1 VARCHAR(512),		
		a__item_custom_2 VARCHAR(512),		
		a__item_custom_3 VARCHAR(512),		
		a__item_custom_4 VARCHAR(512),		
		a__item_custom_5 VARCHAR(512),		
		a__item_custom_6 VARCHAR(512),		
		a__item_custom_7 VARCHAR(512),		
		a__item_custom_checkbox_1 VARCHAR(512),		
		a__item_custom_checkbox_2 VARCHAR(512),		
		a__item_custom_picklist_1 VARCHAR(512),		
		a__item_custom_picklist_2 VARCHAR(512),		
		a__item_description VARCHAR(512),		
		a__item_designation VARCHAR(512),		
		a__item_id VARCHAR(512),		
		a__item_key VARCHAR(512),		
		a__item_key_item VARCHAR(512),		
		a__item_nabca_code VARCHAR(512),		
		a__item_name VARCHAR(512),		
		a__item_name_number VARCHAR(512),		
		a__item_number VARCHAR(512),		
		a__item_order_unit VARCHAR(512),		
		a__item_ownership VARCHAR(512),		
		a__item_package VARCHAR(512),		
		a__item_proof VARCHAR(512),		
		a__item_record_type VARCHAR(512),		
		a__item_secondary_uom VARCHAR(512),		
		a__item_tax_class VARCHAR(512),		
		a__item_uom VARCHAR(512),		
		a__item_upc_code VARCHAR(512),		
		a__item_vintage VARCHAR(512),		
		a__item_visible VARCHAR(512),		
		a__label_appellation VARCHAR(512),		
		a__label_attachments VARCHAR(512),		
		a__label_broken_case_exempt VARCHAR(512),		
		a__label_country VARCHAR(512),		
		a__label_custom_1 VARCHAR(512),		
		a__label_custom_2 VARCHAR(512),		
		a__label_custom_checkbox_1 VARCHAR(512),		
		a__label_custom_checkbox_2 VARCHAR(512),		
		a__label_custom_picklist_1 VARCHAR(512),		
		a__label_custom_picklist_2 VARCHAR(512),		
		a__label_id VARCHAR(512),		
		a__label_key VARCHAR(512),		
		a__label_key_label VARCHAR(512),		
		a__label_name VARCHAR(512),		
		a__label_ownership VARCHAR(512),		
		a__label_product_line VARCHAR(512),		
		a__label_region VARCHAR(512),		
		a__label_size_id VARCHAR(512),		
		a__label_size_key VARCHAR(512),		
		a__label_size_name VARCHAR(512),		
		a__label_sub_region VARCHAR(512),		
		a__label_type VARCHAR(512),		
		a__label_variety VARCHAR(512),		
		a__label_vineyard VARCHAR(512),		
		a__label_visible VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__product_dim_granularity VARCHAR(512),		
		a__product_dim_name VARCHAR(512),		
		a__product_set_id VARCHAR(512),		
		a__product_set_name VARCHAR(512),		
		a__size_container_type VARCHAR(512),		
		a__size_id VARCHAR(512),		
		a__size_key VARCHAR(512),		
		a__size_name VARCHAR(512),		
		a__size_package_type VARCHAR(512),		
		a__supplier_account_key VARCHAR(512),		
		a__supplier_city VARCHAR(512),		
		a__supplier_country VARCHAR(512),		
		a__supplier_custom_1 VARCHAR(512),		
		a__supplier_custom_2 VARCHAR(512),		
		a__supplier_custom_3 VARCHAR(512),		
		a__supplier_custom_4 VARCHAR(512),		
		a__supplier_custom_5 VARCHAR(512),		
		a__supplier_id VARCHAR(512),		
		a__supplier_name VARCHAR(512),		
		a__supplier_state VARCHAR(512),		
		a__supplier_street VARCHAR(512),		
		a__supplier_zip VARCHAR(512),		
		cp__product_dim_id VARCHAR(512),		
		f__item_9l_equivalent NUMERIC(10,4),		
		f__item_custom_fact_1 NUMERIC(10,4),		
		f__item_custom_fact_2 NUMERIC(10,4),		
		f__item_fob_di NUMERIC(12,2),		
		f__item_fob_warehouse NUMERIC(12,2),		
		f__item_full_case_equivalent NUMERIC(10,4),		
		f__item_list_price NUMERIC(12,2),		
		f__item_msrp NUMERIC(12,2),		
		f__item_price_2 NUMERIC(12,2),		
		f__item_price_3 NUMERIC(12,2),		
		f__item_price_4 NUMERIC(12,2),		
		f__item_price_5 NUMERIC(12,2),		
		f__item_primary_equivalent NUMERIC(10,4),		
		f__item_quantity NUMERIC(15,4),		
		f__item_secondary_equivalent NUMERIC(10,4),		
		f__item_unit_price NUMERIC(12,2),		
		f__item_units NUMERIC(12,2),		
		f__size_9l_equivalent NUMERIC(15,4),		
		f__size_liter_volume NUMERIC(15,4),		
		f__size_ml_sort NUMERIC(15,4),		
		f__size_primary_conversion NUMERIC(10,4),		
		f__size_secondary_conversion NUMERIC(10,4),		
		f__size_standard_fce NUMERIC(10,4),		
		l__brand_name__brand_url VARCHAR(512),		
		l__item_name__item_url VARCHAR(512),		
		l__item_name_number__item_url2 VARCHAR(512),		
		l__label_name__label_url VARCHAR(512),		
		l__product_dim_name__product_dim_url VARCHAR(512),		
		l__product_set_name__product_set_url VARCHAR(512),		
		l__size_name__size_url VARCHAR(512),		
		l__supplier_name__supplier_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_product_set_dim --				
--------------------------------------------------				
CREATE TABLE "gd_product_set_dim" (				
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__product_set_brand_name VARCHAR(512),		
		a__product_set_dim_granularity VARCHAR(512),		
		a__product_set_dim_name VARCHAR(512),		
		a__product_set_id VARCHAR(512),		
		a__product_set_item_name VARCHAR(512),		
		a__product_set_label_name VARCHAR(512),		
		a__product_set_member_id VARCHAR(512),		
		a__product_set_member_name VARCHAR(512),		
		a__product_set_name VARCHAR(512),		
		a__product_set_product_level VARCHAR(512),		
		cp__product_set_dim_id VARCHAR(512),		
		l__product_set_dim_name__product_set_dim_url VARCHAR(512),		
		l__product_set_member_name__product_set_member_position INTEGER,		
		l__product_set_member_name__product_set_member_url VARCHAR(512),		
		l__product_set_name__product_set_url VARCHAR(512),		
		r__product_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_promo_event_fact --				
--------------------------------------------------				
CREATE TABLE "gd_promo_event_fact" (				
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__megacall_geocode VARCHAR(512),		
		a__megacall_latitude VARCHAR(512),		
		a__megacall_longitude VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__promo_event_activity_group VARCHAR(512),		
		a__promo_event_activity_type VARCHAR(512),		
		a__promo_event_bartender_feedback VARCHAR(1020),		
		a__promo_event_brand_promoted VARCHAR(512),		
		a__promo_event_custom_1 VARCHAR(512),		
		a__promo_event_custom_2 VARCHAR(512),		
		a__promo_event_custom_3 VARCHAR(512),		
		a__promo_event_custom_4 VARCHAR(512),		
		a__promo_event_custom_5 VARCHAR(512),		
		a__promo_event_customer_feedback VARCHAR(1020),		
		a__promo_event_description VARCHAR(1020),		
		a__promo_event_erf_received VARCHAR(512),		
		a__promo_event_fact_type VARCHAR(512),		
		a__promo_event_featured_drink VARCHAR(512),		
		a__promo_event_id VARCHAR(512),		
		a__promo_event_name VARCHAR(512),		
		a__promo_event_product_granularity VARCHAR(512),		
		a__promo_event_product_name VARCHAR(512),		
		a__promo_event_program VARCHAR(512),		
		a__promo_event_program_type VARCHAR(512),		
		a__promo_event_record_type VARCHAR(512),		
		a__promo_event_record_type_id VARCHAR(512),		
		a__promo_event_status VARCHAR(512),		
		a__promo_event_type VARCHAR(512),		
		cp__promo_event_fact_id VARCHAR(512),		
		d__createdate DATE,		
		d__fiscaldate DATE,		
		d__startdate DATE,		
		d__txndate DATE,		
		f__create_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__megacall_distance NUMERIC(15,4),		
		f__promo_event_actual_bar_tab NUMERIC(15,4),		
		f__promo_event_actual_cost NUMERIC(15,4),		
		f__promo_event_actual_staff_cost NUMERIC(15,4),		
		f__promo_event_bartab_budget NUMERIC(15,4),		
		f__promo_event_bartenders_required NUMERIC(15,4),		
		f__promo_event_bottles_sold NUMERIC(15,4),		
		f__promo_event_consumers_sampled NUMERIC(15,4),		
		f__promo_event_drinks_purchased NUMERIC(15,4),		
		f__promo_event_drinks_sold NUMERIC(15,4),		
		f__promo_event_fact_1 NUMERIC(15,4),		
		f__promo_event_fact_2 NUMERIC(15,4),		
		f__promo_event_samplers_required NUMERIC(15,4),		
		f__promo_event_samples_given NUMERIC(15,4),		
		f__promo_event_staff_budget NUMERIC(15,4),		
		f__promo_event_total_budget NUMERIC(15,4),		
		f__start_date INTEGER,		
		f__txn_date INTEGER,		
		l__promo_event_name__promo_event_url VARCHAR(512),		
		r__account_call_fact VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__activity_fact VARCHAR(512),		
		r__activity_goal_dim VARCHAR(512),		
		r__contact_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__spend_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_rad_fact --				
--------------------------------------------------				
CREATE TABLE "gd_rad_fact" (				
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__rad_custom_1 VARCHAR(512),		
		a__rad_custom_2 VARCHAR(512),		
		a__rad_dist_item_number VARCHAR(512),		
		a__rad_fact_name VARCHAR(512),		
		a__rad_fact_type VARCHAR(512),		
		a__rad_invoice_number VARCHAR(512),		
		a__rad_key VARCHAR(512),		
		a__rad_outlet_key VARCHAR(512),		
		a__rad_pod_brand_key VARCHAR(512),		
		a__rad_pod_item_key VARCHAR(512),		
		a__rad_pod_key VARCHAR(512),		
		a__rad_pod_label_key VARCHAR(512),		
		a__rad_rpt_current_ind VARCHAR(512),		
		a__rad_sales_rep_code VARCHAR(512),		
		a__rad_sales_rep_name VARCHAR(512),		
		a__rad_source_file VARCHAR(512),		
		a__rad_source_system VARCHAR(512),		
		cp__rad_fact_id VARCHAR(512),		
		d__altenddate DATE,		
		d__altstartdate DATE,		
		d__enddate DATE,		
		d__fiscaldate DATE,		
		d__rptfromdate DATE,		
		d__startdate DATE,		
		d__txnaltdate DATE,		
		d__txndate DATE,		
		f__alt_end_date INTEGER,		
		f__alt_start_date INTEGER,		
		f__end_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__rad_9l_cases NUMERIC(15,4),		
		f__rad_addl_charges_amount NUMERIC(12,2),		
		f__rad_bottle_deposit_amount NUMERIC(12,2),		
		f__rad_extended_price_1 NUMERIC(12,2),		
		f__rad_extended_price_2 NUMERIC(12,2),		
		f__rad_fact_1 NUMERIC(15,4),		
		f__rad_fact_2 NUMERIC(15,4),		
		f__rad_fce_cases NUMERIC(15,4),		
		f__rad_physical_cases NUMERIC(15,4),		
		f__rad_primary_volume NUMERIC(15,4),		
		f__rad_secondary_volume NUMERIC(15,4),		
		f__rad_tax_amount NUMERIC(12,2),		
		f__rpt_from_date INTEGER,		
		f__start_date INTEGER,		
		f__txn_alt_date INTEGER,		
		f__txn_date INTEGER,		
		l__rad_fact_name__rad_fact_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__account_team_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__contact_dim VARCHAR(512),		
		r__currency_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__sales_division_dim VARCHAR(512),		
		r__sales_rep_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_sales_division_dim --				
--------------------------------------------------				
CREATE TABLE "gd_sales_division_dim" (				
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__sales_division_dim_name VARCHAR(512),		
		a__sales_division_id VARCHAR(512),		
		a__sales_division_ind_list VARCHAR(512),		
		a__sales_division_key VARCHAR(512),		
		a__sales_division_name VARCHAR(512),		
		cp__sales_division_dim_id VARCHAR(512),		
		l__sales_division_dim_name__sales_division_dim_url VARCHAR(512),		
		l__sales_division_name__sales_division_url VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_sales_driver_dim --				
--------------------------------------------------				
CREATE TABLE "gd_sales_driver_dim" (				
		a__sales_driver_name VARCHAR(512),		
		cp__sales_driver_dim_id VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_sales_goal_fact --				
--------------------------------------------------				
CREATE TABLE "gd_sales_goal_fact" (				
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__sales_goal_adjustment_comment VARCHAR(512),		
		a__sales_goal_category VARCHAR(512),		
		a__sales_goal_competitor_name VARCHAR(512),		
		a__sales_goal_custom_1 VARCHAR(512),		
		a__sales_goal_custom_2 VARCHAR(512),		
		a__sales_goal_custom_3 VARCHAR(512),		
		a__sales_goal_custom_4 VARCHAR(512),		
		a__sales_goal_custom_5 VARCHAR(512),		
		a__sales_goal_fact_granularity VARCHAR(512),		
		a__sales_goal_fact_name VARCHAR(512),		
		a__sales_goal_id VARCHAR(512),		
		a__sales_goal_key VARCHAR(512),		
		a__sales_goal_master_id VARCHAR(512),		
		a__sales_goal_master_ind VARCHAR(512),		
		a__sales_goal_min_qty_uom VARCHAR(512),		
		a__sales_goal_name VARCHAR(512),		
		a__sales_goal_period_type VARCHAR(512),		
		a__sales_goal_plan_description VARCHAR(512),		
		a__sales_goal_plan_id VARCHAR(512),		
		a__sales_goal_plan_ind VARCHAR(512),		
		a__sales_goal_plan_name VARCHAR(512),		
		a__sales_goal_plan_number VARCHAR(512),		
		a__sales_goal_plan_parent_id VARCHAR(512),		
		a__sales_goal_product_name VARCHAR(512),		
		a__sales_goal_quantity_type VARCHAR(512),		
		a__sales_goal_record_type VARCHAR(512),		
		a__sales_goal_reference_ind VARCHAR(512),		
		a__sales_goal_reference_report_id VARCHAR(512),		
		a__sales_goal_status VARCHAR(512),		
		a__sales_goal_txn_type VARCHAR(512),		
		a__sales_goal_type VARCHAR(512),		
		a__sales_goal_user_type VARCHAR(512),		
		cp__sales_goal_fact_id VARCHAR(512),		
		d__altenddate DATE,		
		d__altstartdate DATE,		
		d__enddate DATE,		
		d__fiscaldate DATE,		
		d__startdate DATE,		
		d__txnaltdate DATE,		
		d__txndate DATE,		
		f__alt_end_date INTEGER,		
		f__alt_start_date INTEGER,		
		f__end_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__sales_goal_9l_cases NUMERIC(15,4),		
		f__sales_goal_adjustment NUMERIC(15,2),		
		f__sales_goal_currency_value NUMERIC(15,2),		
		f__sales_goal_custom_fact_1 NUMERIC(15,4),		
		f__sales_goal_custom_fact_2 NUMERIC(15,4),		
		f__sales_goal_custom_fact_3 NUMERIC(15,4),		
		f__sales_goal_estimate_9l_cases NUMERIC(15,4),		
		f__sales_goal_estimate_cases NUMERIC(15,4),		
		f__sales_goal_fce_cases NUMERIC(15,4),		
		f__sales_goal_mid_period_9l_cases NUMERIC(15,4),		
		f__sales_goal_mid_period_cases NUMERIC(15,4),		
		f__sales_goal_min_qty NUMERIC(15,4),		
		f__sales_goal_minimum_value NUMERIC(15,4),		
		f__sales_goal_physical_cases NUMERIC(15,4),		
		f__sales_goal_primary_volume NUMERIC(15,4),		
		f__sales_goal_quantity NUMERIC(15,4),		
		f__sales_goal_reference_value NUMERIC(15,4),		
		f__sales_goal_reported_result NUMERIC(15,4),		
		f__sales_goal_secondary_volume NUMERIC(15,4),		
		f__sales_goal_weight NUMERIC(15,4),		
		f__start_date INTEGER,		
		f__txn_alt_date INTEGER,		
		f__txn_date INTEGER,		
		l__sales_goal_fact_name__sales_goal_fact_url VARCHAR(512),		
		l__sales_goal_name__sales_goal_url VARCHAR(512),		
		l__sales_goal_plan_name__sales_goal_plan_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__account_set_dim VARCHAR(512),		
		r__acct_record_type_dim VARCHAR(512),		
		r__acct_segment_dim VARCHAR(512),		
		r__acct_type_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__competitor_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__product_set_dim VARCHAR(512),		
		r__sales_division_dim VARCHAR(512),		
		r__sales_driver_dim VARCHAR(512),		
		r__spend_dim VARCHAR(512),		
		r__survey_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_sales_order_fact --				
--------------------------------------------------				
CREATE TABLE "gd_sales_order_fact" (				
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__sales_order_fact_name VARCHAR(512),		
		a__sales_order_fact_type VARCHAR(512),		
		a__sales_order_id VARCHAR(512),		
		a__sales_order_key VARCHAR(512),		
		a__sales_order_line_distributor_repack VARCHAR(512),		
		a__sales_order_line_id VARCHAR(512),		
		a__sales_order_line_key VARCHAR(512),		
		a__sales_order_line_name VARCHAR(512),		
		a__sales_order_line_pod_brand_key VARCHAR(512),		
		a__sales_order_line_pod_item_key VARCHAR(512),		
		a__sales_order_line_pod_key VARCHAR(512),		
		a__sales_order_line_pod_label_key VARCHAR(512),		
		a__sales_order_line_price_level VARCHAR(512),		
		a__sales_order_line_qty_per_carton VARCHAR(512),		
		a__sales_order_line_supplier_discount_participation VARCHAR(512),		
		a__sales_order_line_supplier_promo_code VARCHAR(512),		
		a__sales_order_line_uom VARCHAR(512),		
		a__sales_order_name VARCHAR(512),		
		a__sales_order_number VARCHAR(512),		
		a__sales_order_status VARCHAR(512),		
		a__sales_order_tracking_number VARCHAR(512),		
		a__sales_order_type VARCHAR(512),		
		a__sales_order_will_call VARCHAR(512),		
		cp__sales_order_fact_id VARCHAR(512),		
		d__enddate DATE,		
		d__fiscaldate DATE,		
		d__startdate DATE,		
		d__txnaltdate DATE,		
		d__txndate DATE,		
		f__end_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__sales_order_line_9l_cases NUMERIC(15,4),		
		f__sales_order_line_extended_price NUMERIC(12,2),		
		f__sales_order_line_fce_cases NUMERIC(15,4),		
		f__sales_order_line_invoice_discount NUMERIC(12,2),		
		f__sales_order_line_invoice_ext_price NUMERIC(12,2),		
		f__sales_order_line_invoice_item NUMERIC(12,2),		
		f__sales_order_line_invoice_tax NUMERIC(12,2),		
		f__sales_order_line_number NUMERIC(12,2),		
		f__sales_order_line_physical_cases NUMERIC(15,4),		
		f__sales_order_line_price NUMERIC(12,2),		
		f__sales_order_line_primary_volume NUMERIC(15,4),		
		f__sales_order_line_quantity NUMERIC(15,4),		
		f__sales_order_line_secondary_volume NUMERIC(15,4),		
		f__sales_order_line_supplier_depletion_allowance NUMERIC(12,2),		
		f__start_date INTEGER,		
		f__txn_alt_date INTEGER,		
		f__txn_date INTEGER,		
		l__sales_order_fact_name__sales_order_fact_url VARCHAR(512),		
		l__sales_order_line_name__sales_order_line_url VARCHAR(512),		
		l__sales_order_name__sales_order_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__contact_dim VARCHAR(512),		
		r__currency_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_sales_rep_dim --				
--------------------------------------------------				
CREATE TABLE "gd_sales_rep_dim" (				
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__sales_rep_dim_name VARCHAR(512),		
		a__sales_rep_dist_cust_number VARCHAR(512),		
		a__sales_rep_dist_number VARCHAR(512),		
		a__sales_rep_key VARCHAR(512),		
		a__sales_rep_name VARCHAR(512),		
		a__sales_rep_number VARCHAR(512),		
		a__sales_rep_rpt_current_ind VARCHAR(512),		
		a__sales_rep_source_file VARCHAR(512),		
		a__sales_rep_team_name VARCHAR(512),		
		a__sales_rep_team_number VARCHAR(512),		
		cp__sales_rep_dim_id VARCHAR(512),		
		d__rptfromdate DATE,		
		f__rpt_from_date INTEGER		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_shipment_fact --				
--------------------------------------------------				
CREATE TABLE "gd_shipment_fact" (				
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__shipment_custom_1 VARCHAR(512),		
		a__shipment_custom_2 VARCHAR(512),		
		a__shipment_fact_name VARCHAR(512),		
		a__shipment_fact_type VARCHAR(512),		
		a__shipment_invoice_number VARCHAR(512),		
		a__shipment_key VARCHAR(512),		
		a__shipment_order_number VARCHAR(512),		
		a__shipment_order_type VARCHAR(512),		
		a__shipment_rpt_current_ind VARCHAR(512),		
		a__shipment_source_system VARCHAR(512),		
		a__shipment_status VARCHAR(512),		
		cp__shipment_fact_id VARCHAR(512),		
		d__enddate DATE,		
		d__fiscaldate DATE,		
		d__startdate DATE,		
		d__txnaltdate DATE,		
		d__txndate DATE,		
		f__end_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__shipment_9l_cases NUMERIC(15,4),		
		f__shipment_extended_price_1 NUMERIC(12,2),		
		f__shipment_extended_price_2 NUMERIC(12,2),		
		f__shipment_fact_1 NUMERIC(15,4),		
		f__shipment_fact_2 NUMERIC(15,4),		
		f__shipment_fce_cases NUMERIC(15,4),		
		f__shipment_physical_cases NUMERIC(15,4),		
		f__shipment_primary_volume NUMERIC(15,4),		
		f__shipment_secondary_volume NUMERIC(15,4),		
		f__start_date INTEGER,		
		f__txn_alt_date INTEGER,		
		f__txn_date INTEGER,		
		l__shipment_fact_name__shipment_fact_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__currency_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_spend_dim --				
--------------------------------------------------				
CREATE TABLE "gd_spend_dim" (				
		a__budget_cost_center VARCHAR(512),		
		a__budget_custom_1 VARCHAR(512),		
		a__budget_custom_2 VARCHAR(512),		
		a__budget_custom_3 VARCHAR(512),		
		a__budget_custom_4 VARCHAR(512),		
		a__budget_custom_5 VARCHAR(512),		
		a__budget_custom_picklist_1 VARCHAR(512),		
		a__budget_custom_picklist_2 VARCHAR(512),		
		a__budget_description VARCHAR(512),		
		a__budget_id VARCHAR(512),		
		a__budget_key VARCHAR(512),		
		a__budget_name VARCHAR(512),		
		a__budget_owner_email VARCHAR(512),		
		a__budget_owner_first_name VARCHAR(512),		
		a__budget_owner_id VARCHAR(512),		
		a__budget_owner_key VARCHAR(512),		
		a__budget_owner_last_name VARCHAR(512),		
		a__budget_owner_name VARCHAR(512),		
		a__budget_owner_username VARCHAR(512),		
		a__budget_plan_brand_key VARCHAR(512),		
		a__budget_plan_brand_name VARCHAR(512),		
		a__budget_plan_cost_center VARCHAR(512),		
		a__budget_plan_custom_1 VARCHAR(512),		
		a__budget_plan_custom_2 VARCHAR(512),		
		a__budget_plan_custom_3 VARCHAR(512),		
		a__budget_plan_custom_4 VARCHAR(512),		
		a__budget_plan_custom_5 VARCHAR(512),		
		a__budget_plan_custom_picklist_1 VARCHAR(512),		
		a__budget_plan_custom_picklist_2 VARCHAR(512),		
		a__budget_plan_id VARCHAR(512),		
		a__budget_plan_key VARCHAR(512),		
		a__budget_plan_name VARCHAR(512),		
		a__budget_plan_spend_type VARCHAR(512),		
		a__budget_spend_type VARCHAR(512),		
		a__budget_time_period VARCHAR(512),		
		a__budget_type VARCHAR(512),		
		a__created_by VARCHAR(512),		
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__program_code VARCHAR(512),		
		a__program_cost_center VARCHAR(512),		
		a__program_custom_1 VARCHAR(512),		
		a__program_custom_2 VARCHAR(512),		
		a__program_custom_3 VARCHAR(512),		
		a__program_custom_4 VARCHAR(512),		
		a__program_custom_5 VARCHAR(512),		
		a__program_custom_picklist_1 VARCHAR(512),		
		a__program_custom_picklist_2 VARCHAR(512),		
		a__program_description VARCHAR(512),		
		a__program_id VARCHAR(512),		
		a__program_name VARCHAR(512),		
		a__program_record_type VARCHAR(512),		
		a__program_spend_type VARCHAR(512),		
		a__program_status VARCHAR(512),		
		a__program_type VARCHAR(512),		
		a__spend_dim_brand_name VARCHAR(512),		
		a__spend_dim_custom_date_1 VARCHAR(512),		
		a__spend_dim_custom_date_2 VARCHAR(512),		
		a__spend_dim_granularity VARCHAR(512),		
		a__spend_dim_item_name VARCHAR(512),		
		a__spend_dim_label_name VARCHAR(512),		
		a__spend_dim_name VARCHAR(512),		
		a__spend_dim_product_level VARCHAR(512),		
		cp__spend_dim_id VARCHAR(512),		
		d__enddate DATE,		
		d__startdate DATE,		
		f__budget_custom_currency_1 NUMERIC(12,2),		
		f__budget_custom_currency_2 NUMERIC(12,2),		
		f__budget_custom_number_1 NUMERIC(12,4),		
		f__budget_custom_number_2 NUMERIC(12,4),		
		f__budget_plan_custom_currency_1 NUMERIC(12,2),		
		f__budget_plan_custom_currency_2 NUMERIC(12,2),		
		f__budget_plan_custom_number_1 NUMERIC(12,4),		
		f__budget_plan_custom_number_2 NUMERIC(12,4),		
		f__budget_plan_target_amount NUMERIC(12,2),		
		f__budget_target_amount NUMERIC(12,2),		
		f__end_date INTEGER,		
		f__program_cost NUMERIC(12,2),		
		f__program_cost_to_brand NUMERIC(12,2),		
		f__program_cost_to_dist NUMERIC(12,2),		
		f__program_custom_currency_1 NUMERIC(12,2),		
		f__program_custom_currency_2 NUMERIC(12,2),		
		f__program_custom_number_1 NUMERIC(12,4),		
		f__program_custom_number_2 NUMERIC(12,4),		
		f__program_est_volume NUMERIC(12,4),		
		f__start_date INTEGER,		
		l__budget_name__budget_url VARCHAR(512),		
		l__budget_owner_name__budget_owner_url VARCHAR(512),		
		l__budget_plan_name__budget_plan_url VARCHAR(512),		
		l__program_name__program_url VARCHAR(512),		
		l__spend_dim_name__spend_dim_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__contact_dim VARCHAR(512),		
		r__currency_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_spend_fact --				
--------------------------------------------------				
CREATE TABLE "gd_spend_fact" (				
		a__created_date VARCHAR(512),		
		a__expense_approval_status VARCHAR(512),		
		a__expense_custom_1 VARCHAR(512),		
		a__expense_custom_2 VARCHAR(512),		
		a__expense_custom_3 VARCHAR(512),		
		a__expense_custom_4 VARCHAR(512),		
		a__expense_custom_5 VARCHAR(512),		
		a__expense_custom_picklist_1 VARCHAR(512),		
		a__expense_custom_picklist_2 VARCHAR(512),		
		a__expense_custom_picklist_3 VARCHAR(512),		
		a__expense_custom_picklist_4 VARCHAR(512),		
		a__expense_description VARCHAR(512),		
		a__expense_id VARCHAR(512),		
		a__expense_link_type VARCHAR(512),		
		a__expense_name VARCHAR(512),		
		a__expense_notes VARCHAR(512),		
		a__expense_pos_code VARCHAR(512),		
		a__expense_pos_name VARCHAR(512),		
		a__expense_spend_type VARCHAR(512),		
		a__expense_status VARCHAR(512),		
		a__expense_type VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__invoice_action_reason VARCHAR(512),		
		a__invoice_custom_1 VARCHAR(512),		
		a__invoice_custom_2 VARCHAR(512),		
		a__invoice_custom_3 VARCHAR(512),		
		a__invoice_custom_4 VARCHAR(512),		
		a__invoice_custom_5 VARCHAR(512),		
		a__invoice_custom_picklist_1 VARCHAR(512),		
		a__invoice_custom_picklist_2 VARCHAR(512),		
		a__invoice_id VARCHAR(512),		
		a__invoice_name VARCHAR(512),		
		a__invoice_notes VARCHAR(512),		
		a__invoice_number VARCHAR(512),		
		a__invoice_payment_method VARCHAR(512),		
		a__invoice_posting_date VARCHAR(512),		
		a__invoice_status VARCHAR(512),		
		a__invoice_type VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__planned_spend_custom_1 VARCHAR(512),		
		a__planned_spend_custom_2 VARCHAR(512),		
		a__planned_spend_custom_3 VARCHAR(512),		
		a__planned_spend_custom_4 VARCHAR(512),		
		a__planned_spend_custom_5 VARCHAR(512),		
		a__planned_spend_custom_checkbox_1 VARCHAR(512),		
		a__planned_spend_custom_checkbox_2 VARCHAR(512),		
		a__planned_spend_custom_picklist_1 VARCHAR(512),		
		a__planned_spend_custom_picklist_2 VARCHAR(512),		
		a__planned_spend_description VARCHAR(512),		
		a__planned_spend_id VARCHAR(512),		
		a__planned_spend_name VARCHAR(512),		
		a__planned_spend_status VARCHAR(512),		
		a__planned_spend_type VARCHAR(512),		
		a__spend_fact_custom_date_1 VARCHAR(512),		
		a__spend_fact_custom_date_2 VARCHAR(512),		
		a__spend_fact_name VARCHAR(512),		
		a__spend_fact_type VARCHAR(512),		
		a__spend_owner_email VARCHAR(512),		
		a__spend_owner_first_name VARCHAR(512),		
		a__spend_owner_id VARCHAR(512),		
		a__spend_owner_key VARCHAR(512),		
		a__spend_owner_last_name VARCHAR(512),		
		a__spend_owner_name VARCHAR(512),		
		a__spend_owner_username VARCHAR(512),		
		cp__spend_fact_id VARCHAR(512),		
		d__fiscaldate DATE,		
		d__txnaltdate DATE,		
		d__txndate DATE,		
		f__expense_amount NUMERIC(12,2),		
		f__expense_custom_currency_1 NUMERIC(12,2),		
		f__expense_custom_currency_2 NUMERIC(12,2),		
		f__expense_custom_number_1 NUMERIC(15,4),		
		f__expense_custom_number_2 NUMERIC(15,4),		
		f__expense_linked_amount NUMERIC(12,2),		
		f__expense_planned_amount NUMERIC(12,2),		
		f__expense_quantity NUMERIC(15,4),		
		f__fiscal_date INTEGER,		
		f__invoice_action_amount NUMERIC(12,2),		
		f__invoice_amount NUMERIC(12,2),		
		f__invoice_custom_currency_1 NUMERIC(12,2),		
		f__invoice_custom_currency_2 NUMERIC(12,2),		
		f__invoice_custom_number_1 NUMERIC(15,4),		
		f__invoice_custom_number_2 NUMERIC(15,4),		
		f__planned_spend_amount NUMERIC(12,2),		
		f__planned_spend_custom_currency_1 NUMERIC(12,2),		
		f__planned_spend_custom_currency_2 NUMERIC(12,2),		
		f__planned_spend_custom_number_1 NUMERIC(15,4),		
		f__planned_spend_custom_number_2 NUMERIC(15,4),		
		f__txn_alt_date INTEGER,		
		f__txn_date INTEGER,		
		l__expense_name__expense_url VARCHAR(512),		
		l__invoice_name__invoice_url VARCHAR(512),		
		l__planned_spend_name__planned_spend_url VARCHAR(512),		
		l__spend_fact_name__spend_fact_url VARCHAR(512),		
		l__spend_owner_name__spend_owner_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__currency_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__geography_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__spend_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_survey_dim --				
--------------------------------------------------				
CREATE TABLE "gd_survey_dim" (				
		a__created_date VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__survey_bank_category VARCHAR(512),		
		a__survey_bank_custom_1 VARCHAR(512),		
		a__survey_bank_custom_2 VARCHAR(512),		
		a__survey_bank_custom_3 VARCHAR(512),		
		a__survey_bank_custom_4 VARCHAR(512),		
		a__survey_bank_custom_5 VARCHAR(512),		
		a__survey_bank_id VARCHAR(512),		
		a__survey_bank_key VARCHAR(512),		
		a__survey_bank_multiple_answers VARCHAR(512),		
		a__survey_bank_name VARCHAR(512),		
		a__survey_bank_product_only VARCHAR(512),		
		a__survey_bank_question_text VARCHAR(512),		
		a__survey_bank_question_type VARCHAR(512),		
		a__survey_bank_reference_to VARCHAR(512),		
		a__survey_bank_sales_driver VARCHAR(512),		
		a__survey_dim_granularity VARCHAR(512),		
		a__survey_dim_name VARCHAR(512),		
		a__survey_plan_aim VARCHAR(512),		
		a__survey_plan_channel VARCHAR(512),		
		a__survey_plan_custom_text_1 VARCHAR(512),		
		a__survey_plan_custom_text_2 VARCHAR(512),		
		a__survey_plan_custom_text_3 VARCHAR(512),		
		a__survey_plan_custom_text_4 VARCHAR(512),		
		a__survey_plan_custom_text_5 VARCHAR(512),		
		a__survey_plan_id VARCHAR(512),		
		a__survey_plan_key VARCHAR(512),		
		a__survey_plan_name VARCHAR(512),		
		a__survey_plan_published VARCHAR(512),		
		a__survey_product_key VARCHAR(512),		
		a__survey_product_name VARCHAR(512),		
		a__survey_product_ownership VARCHAR(512),		
		a__survey_product_size_key VARCHAR(512),		
		a__survey_product_size_name VARCHAR(512),		
		a__survey_product_type VARCHAR(512),		
		a__survey_question_cluster_name VARCHAR(512),		
		a__survey_question_cluster_number VARCHAR(512),		
		a__survey_question_conditional VARCHAR(512),		
		a__survey_question_custom_1 VARCHAR(512),		
		a__survey_question_custom_2 VARCHAR(512),		
		a__survey_question_custom_3 VARCHAR(512),		
		a__survey_question_custom_4 VARCHAR(512),		
		a__survey_question_custom_5 VARCHAR(512),		
		a__survey_question_group_category VARCHAR(512),		
		a__survey_question_group_name VARCHAR(512),		
		a__survey_question_group_type VARCHAR(512),		
		a__survey_question_id VARCHAR(512),		
		a__survey_question_key VARCHAR(512),		
		a__survey_question_list VARCHAR(512),		
		a__survey_question_multiple_answers VARCHAR(512),		
		a__survey_question_name VARCHAR(512),		
		a__survey_question_order VARCHAR(512),		
		a__survey_question_reference_to VARCHAR(512),		
		a__survey_question_sales_driver VARCHAR(512),		
		a__survey_question_target_checkbox VARCHAR(512),		
		a__survey_question_target_text VARCHAR(512),		
		a__survey_question_target_yesno VARCHAR(512),		
		a__survey_question_text VARCHAR(1020),		
		a__survey_question_type VARCHAR(512),		
		cp__survey_dim_id VARCHAR(512),		
		f__survey_bank_custom_fact_1 NUMERIC(10,4),		
		f__survey_bank_custom_fact_2 NUMERIC(10,4),		
		f__survey_bank_custom_fact_3 NUMERIC(10,4),		
		f__survey_bank_custom_fact_4 NUMERIC(10,4),		
		f__survey_bank_custom_fact_5 NUMERIC(10,4),		
		f__survey_plan_goal NUMERIC(12,2),		
		f__survey_question_custom_fact_1 NUMERIC(10,4),		
		f__survey_question_custom_fact_2 NUMERIC(10,4),		
		f__survey_question_custom_fact_3 NUMERIC(10,4),		
		f__survey_question_custom_fact_4 NUMERIC(10,4),		
		f__survey_question_custom_fact_5 NUMERIC(10,4),		
		f__survey_question_format NUMERIC(12,2),		
		f__survey_question_group_number NUMERIC(12,2),		
		f__survey_question_points NUMERIC(12,2),		
		f__survey_question_target_currency NUMERIC(12,2),		
		f__survey_question_target_number NUMERIC(10,4),		
		f__survey_question_target_percent NUMERIC(12,2),		
		l__survey_bank_name__survey_bank_url VARCHAR(512),		
		l__survey_dim_name__survey_dim_url VARCHAR(512),		
		l__survey_plan_name__survey_plan_url VARCHAR(512),		
		l__survey_product_name__survey_product_url VARCHAR(512),		
		l__survey_question_name__survey_question_url VARCHAR(512),		
		r__competitor_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__sales_driver_dim VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_survey_fact --				
--------------------------------------------------				
CREATE TABLE "gd_survey_fact" (				
		a__created_date VARCHAR(512),		
		a__fiscal_month VARCHAR(512),		
		a__fiscal_year VARCHAR(512),		
		a__modified_date VARCHAR(512),		
		a__survey_answer_checkbox VARCHAR(512),		
		a__survey_answer_conditional_ind VARCHAR(512),		
		a__survey_answer_custom_text_1 VARCHAR(512),		
		a__survey_answer_custom_text_2 VARCHAR(512),		
		a__survey_answer_custom_text_3 VARCHAR(512),		
		a__survey_answer_custom_text_4 VARCHAR(512),		
		a__survey_answer_custom_text_5 VARCHAR(512),		
		a__survey_answer_id VARCHAR(512),		
		a__survey_answer_image_description VARCHAR(512),		
		a__survey_answer_image_id VARCHAR(512),		
		a__survey_answer_image_ind VARCHAR(512),		
		a__survey_answer_image_name VARCHAR(512),		
		a__survey_answer_key VARCHAR(512),		
		a__survey_answer_most_recent VARCHAR(512),		
		a__survey_answer_multiple_ind VARCHAR(512),		
		a__survey_answer_name VARCHAR(512),		
		a__survey_answer_order VARCHAR(512),		
		a__survey_answer_reference_to VARCHAR(512),		
		a__survey_answer_text VARCHAR(512),		
		a__survey_answer_value VARCHAR(512),		
		a__survey_answered_ind VARCHAR(512),		
		a__survey_audit_answer_id VARCHAR(512),		
		a__survey_audit_notes VARCHAR(512),		
		a__survey_audit_status VARCHAR(512),		
		a__survey_audited_id VARCHAR(512),		
		a__survey_audited_ind VARCHAR(512),		
		a__survey_custom_date_1 VARCHAR(512),		
		a__survey_custom_date_2 VARCHAR(512),		
		a__survey_custom_picklist_1 VARCHAR(512),		
		a__survey_custom_picklist_2 VARCHAR(512),		
		a__survey_custom_text_1 VARCHAR(512),		
		a__survey_custom_text_2 VARCHAR(512),		
		a__survey_custom_text_3 VARCHAR(512),		
		a__survey_custom_text_4 VARCHAR(512),		
		a__survey_custom_text_5 VARCHAR(512),		
		a__survey_fact_granularity VARCHAR(512),		
		a__survey_fact_name VARCHAR(512),		
		a__survey_fact_type VARCHAR(512),		
		a__survey_geocode VARCHAR(512),		
		a__survey_id VARCHAR(512),		
		a__survey_key VARCHAR(512),		
		a__survey_latitude VARCHAR(512),		
		a__survey_longitude VARCHAR(512),		
		a__survey_mobile_ind VARCHAR(512),		
		a__survey_name VARCHAR(512),		
		a__survey_previous_id VARCHAR(512),		
		a__survey_previous_ind VARCHAR(512),		
		a__survey_record_type VARCHAR(512),		
		a__survey_rpt_current_ind VARCHAR(512),		
		a__survey_source VARCHAR(512),		
		a__survey_status VARCHAR(512),		
		cp__survey_fact_id VARCHAR(512),		
		d__altenddate DATE,		
		d__altstartdate DATE,		
		d__enddate DATE,		
		d__fiscaldate DATE,		
		d__rptfromdate DATE,		
		d__startdate DATE,		
		d__txndate DATE,		
		f__alt_end_date INTEGER,		
		f__alt_start_date INTEGER,		
		f__end_date INTEGER,		
		f__fiscal_date INTEGER,		
		f__rpt_from_date INTEGER,		
		f__start_date INTEGER,		
		f__survey_answer_attachments NUMERIC(15,4),		
		f__survey_answer_currency NUMERIC(15,4),		
		f__survey_answer_custom_currency_1 NUMERIC(12,2),		
		f__survey_answer_custom_fact_1 NUMERIC(15,4),		
		f__survey_answer_custom_fact_2 NUMERIC(15,4),		
		f__survey_answer_custom_fact_3 NUMERIC(15,4),		
		f__survey_answer_custom_fact_4 NUMERIC(15,4),		
		f__survey_answer_custom_fact_5 NUMERIC(15,4),		
		f__survey_answer_match_tgt_pts NUMERIC(12,2),		
		f__survey_answer_number NUMERIC(15,4),		
		f__survey_answer_percent NUMERIC(15,4),		
		f__survey_answer_points NUMERIC(12,2),		
		f__survey_custom_currency_1 NUMERIC(12,2),		
		f__survey_custom_currency_2 NUMERIC(12,2),		
		f__survey_custom_number_1 NUMERIC(15,4),		
		f__survey_custom_number_2 NUMERIC(15,4),		
		f__survey_distance NUMERIC(15,0),		
		f__survey_order_fact NUMERIC(15,4),		
		f__txn_date INTEGER,		
		l__survey_answer_image_id__survey_answer_dashboard_image VARCHAR(512),		
		l__survey_answer_image_id__survey_answer_table_image VARCHAR(512),		
		l__survey_answer_image_name__survey_answer_image_url VARCHAR(512),		
		l__survey_answer_name__survey_answer_url VARCHAR(512),		
		l__survey_fact_name__survey_fact_url VARCHAR(512),		
		l__survey_name__survey_url VARCHAR(512),		
		r__account_dim VARCHAR(512),		
		r__account_team_dim VARCHAR(512),		
		r__acct_univ_dim VARCHAR(512),		
		r__competitor_dim VARCHAR(512),		
		r__currency_dim VARCHAR(512),		
		r__fiscal_date_dim VARCHAR(512),		
		r__person_dim VARCHAR(512),		
		r__product_dim VARCHAR(512),		
		r__sales_division_dim VARCHAR(512),		
		r__survey_dim VARCHAR(512),		
		r__txn_type VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_time_series --				
--------------------------------------------------				
CREATE TABLE "gd_time_series" (				
		a__time_series_dim_id VARCHAR(512),		
		a__time_series_dim_name VARCHAR(512),		
		f__time_series_dim_fact NUMERIC(12,2),		
		l__time_series_dim_name__time_series_dim_sort INTEGER		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_top_x --				
--------------------------------------------------				
CREATE TABLE "gd_top_x" (				
		a__top_x_dim_id VARCHAR(512),		
		a__top_x_dim_name VARCHAR(512),		
		f__top_x_dim_fact NUMERIC(12,2),		
		l__top_x_dim_name__top_x_dim_sort INTEGER		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_transaction_type --				
--------------------------------------------------				
CREATE TABLE "gd_transaction_type" (				
		a__transaction_type_dim_name VARCHAR(512),		
		cp__transaction_type_dim_id VARCHAR(512),		
		f__transaction_type_dim_fact NUMERIC(12,2),		
		l__transaction_type_dim_name__transaction_type_dim_sort INTEGER		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_txn_type --				
--------------------------------------------------				
CREATE TABLE "gd_txn_type" (				
		a__txn_type_group VARCHAR(512),		
		a__txn_type_name VARCHAR(512),		
		a__txn_type_order VARCHAR(512),		
		a__txn_type_plural VARCHAR(512),		
		a__txn_type_subgroup VARCHAR(512),		
		cp__txn_type_id VARCHAR(512)		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
--------------------------------------------------				
-- gd_unitofmeasure --				
--------------------------------------------------				
CREATE TABLE "gd_unitofmeasure" (				
		a__uom_dim_name VARCHAR(512),		
		cp__uom_dim_id VARCHAR(512),		
		f__uom_dim_fact NUMERIC(12,2),		
		l__uom_dim_name__unit_of_measure_dim_sort INTEGER		
				
		, "x__client_id" VARCHAR(128) NOT NULL  /* Remove this line if loading into all client workspaces */		
		, "x__deleted" BOOLEAN DEFAULT false  /* Remove this line if inserting only */		
		, "x__timestamp" TIMESTAMP NOT NULL  /* Remove this line if it's not incremental load */		
);				
				
				