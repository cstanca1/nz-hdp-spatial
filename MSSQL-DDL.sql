USE [AP_POC]
GO
/****** Object:  Table [dbo].[analysis_buffers]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[analysis_buffers](
	[analysis_id] [bigint] NULL,
	[buffer_radious] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ap_hex_zoom]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ap_hex_zoom](
	[zoom_id] [int] NULL,
	[zoom_value] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ap_layer_table]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ap_layer_table](
	[layer_url] [varchar](355) NULL,
	[table_name] [varchar](355) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ap_user_preferences]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ap_user_preferences](
	[user_id] [varchar](32) NOT NULL,
	[region_id] [int] NULL,
	[last_analysis_selected] [bigint] NULL,
	[last_group_selected] [varchar](50) NULL,
	[last_portfolio_selected] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[arcgis_queue]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[arcgis_queue](
	[queue_id] [varchar](36) NULL,
	[job_id] [bigint] NULL,
	[portfolio_id] [int] NULL,
	[queue_status] [int] NULL,
	[job_submit_tm] [datetime] NULL,
	[job_update_tm] [datetime] NULL,
	[ags_job_id] [varchar](100) NULL,
	[details_logged] [int] NULL,
	[error_details] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[book_site_field]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_site_field](
	[book_site_field_id] [int] NULL,
	[book_id] [int] NULL,
	[field_id] [int] NULL,
	[display_order] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[br_site_ap_migration_trunc_reload]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[br_site_ap_migration_trunc_reload](
	[portfolio_id] [int] NULL,
	[br_id] [int] NULL,
	[account_id] [bigint] NULL,
	[site_id] [bigint] NULL,
	[g_country_id] [int] NULL,
	[g_mc_level1_id] [bigint] NULL,
	[g_mc_level2_id] [bigint] NULL,
	[g_mc_level3_id] [bigint] NULL,
	[g_mc_level4_id] [bigint] NULL,
	[g_mc_level5_id] [bigint] NULL,
	[g_mc_level6_id] [bigint] NULL,
	[batch_id] [char](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[br_site_exp_ap]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[br_site_exp_ap](
	[portfolio_id] [int] NOT NULL,
	[account_id] [bigint] NOT NULL,
	[site_id] [bigint] NOT NULL,
	[g_country_id] [int] NULL,
	[g_latitude] [numeric](12, 9) NULL,
	[g_longitude] [numeric](12, 9) NULL,
	[nz_grid_id] [numeric](14, 0) NULL,
	[g_mc_level1_id] [bigint] NULL,
	[g_mc_level2_id] [bigint] NULL,
	[g_mc_level3_id] [bigint] NULL,
	[g_mc_level4_id] [bigint] NULL,
	[g_mc_level5_id] [bigint] NULL,
	[g_mc_level6_id] [bigint] NULL,
	[g_mc_gu_id] [int] NULL,
	[geom] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CATEVENT_TROPICALCYCLONE_point]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEVENT_TROPICALCYCLONE_point](
	[OBJECTID] [int] NOT NULL,
	[ID] [numeric](38, 8) NOT NULL,
	[BASIN_ID] [nvarchar](50) NOT NULL,
	[BASIN_NAME] [nvarchar](50) NOT NULL,
	[DIRECTION] [numeric](38, 8) NOT NULL,
	[GUSTS] [numeric](38, 8) NOT NULL,
	[LATITUDE] [nvarchar](50) NOT NULL,
	[LONGITUDE] [nvarchar](50) NOT NULL,
	[MAX_WINDS] [numeric](38, 8) NOT NULL,
	[POS_TYPE] [nvarchar](25) NOT NULL,
	[REF_TIME] [nvarchar](50) NOT NULL,
	[SPEED] [numeric](38, 8) NOT NULL,
	[STORM_NAME] [nvarchar](50) NOT NULL,
	[STORM_TYPE] [nvarchar](50) NOT NULL,
	[STORM_UNIQ] [nvarchar](50) NOT NULL,
	[TRP_RGN_ID] [nvarchar](25) NOT NULL,
	[TRP_RGN_NA] [nvarchar](25) NOT NULL,
	[VALID_TIME] [nvarchar](22) NOT NULL,
	[STORM_DATE] [datetime2](7) NULL,
	[STORM_TIME] [numeric](38, 8) NULL,
	[DATA_SOURCE] [nvarchar](50) NULL,
	[DATA_REGION] [nvarchar](50) NULL,
	[FILE_DATE] [datetime2](7) NULL,
	[UPLOADED_BY] [nvarchar](50) NULL,
	[UPLOADED_DATE] [datetime2](7) NULL,
	[GC_GIS_ID] [int] NULL,
	[COMMENTS] [nvarchar](200) NULL,
	[MIGRATION_SOURCENAME] [nvarchar](100) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[LABEL1] [nvarchar](200) NULL,
	[LABEL2] [nvarchar](200) NULL,
	[SHAPE] [geometry] NULL,
	[STORM_STRE] [nvarchar](50) NULL,
	[CURR_FILE_FLAG] [int] NULL,
	[CURR_STORM_FLAG] [varchar](50) NULL,
	[STORM_ADV_NUM] [varchar](50) NULL,
	[STORM_ATCF_ID] [varchar](50) NULL,
	[STORM_CATG_ID] [varchar](50) NULL,
	[STORM_CATG_DESC] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CATEVENT_TROPICALCYCLONE_TRACK]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEVENT_TROPICALCYCLONE_TRACK](
	[OBJECTID] [int] NOT NULL,
	[ID] [numeric](38, 8) NOT NULL,
	[BASIN_ID] [nvarchar](25) NOT NULL,
	[BASIN_NAME] [nvarchar](25) NOT NULL,
	[REF_TIME] [nvarchar](25) NOT NULL,
	[STORM_NAME] [nvarchar](25) NOT NULL,
	[STORM_UNIQ] [nvarchar](25) NOT NULL,
	[TRP_RGN_ID] [nvarchar](25) NOT NULL,
	[TRP_RGN_NA] [nvarchar](25) NOT NULL,
	[STORM_DATE] [datetime2](7) NULL,
	[STORM_TIME] [numeric](38, 8) NULL,
	[POS_TYPE] [nvarchar](50) NULL,
	[DATA_REGION] [nvarchar](50) NULL,
	[DATA_SOURCE] [nvarchar](50) NULL,
	[FILE_DATE] [datetime2](7) NULL,
	[UPLOADED_BY] [nvarchar](50) NULL,
	[UPLOADED_DATE] [datetime2](7) NULL,
	[GC_GIS_ID] [int] NULL,
	[COMMENTS] [nvarchar](200) NULL,
	[MIGRATION_SOURCENAME] [nvarchar](100) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[GUSTS] [nvarchar](50) NULL,
	[LABEL1] [nvarchar](200) NULL,
	[LABEL2] [nvarchar](200) NULL,
	[SHAPE] [geometry] NULL,
	[CURR_FILE_FLAG] [int] NULL,
	[CURR_STORM_FLAG] [varchar](50) NULL,
	[LATITUDE] [float] NULL,
	[LONGITUDE] [float] NULL,
	[MAX_WINDS] [float] NULL,
	[SPEED] [float] NULL,
	[STORM_ADV_NUM] [varchar](50) NULL,
	[STORM_ATCF_ID] [varchar](50) NULL,
	[STORM_CATG_ID] [varchar](50) NULL,
	[STORM_CATG_DESC] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CATEVENT_TROPICALCYCLONE_WINDSWATH]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEVENT_TROPICALCYCLONE_WINDSWATH](
	[OBJECTID] [int] NOT NULL,
	[ID] [numeric](38, 8) NOT NULL,
	[BASIN_ID] [nvarchar](25) NOT NULL,
	[BASIN_NAME] [nvarchar](25) NOT NULL,
	[LABEL] [nvarchar](25) NOT NULL,
	[LOWER_BOUND] [numeric](38, 8) NOT NULL,
	[REF_TIME] [nvarchar](25) NOT NULL,
	[STORM_NAME] [nvarchar](50) NOT NULL,
	[STORM_UNIQ] [nvarchar](25) NOT NULL,
	[TRP_RGN_ID] [nvarchar](25) NOT NULL,
	[TRP_RGN_NA] [nvarchar](25) NOT NULL,
	[UPPER_BOUND] [numeric](38, 8) NOT NULL,
	[VALID_TIME] [nvarchar](25) NOT NULL,
	[STORM_DATE] [datetime2](7) NULL,
	[STORM_TIME] [numeric](38, 8) NULL,
	[POS_TYPE] [nvarchar](50) NULL,
	[DATA_REGION] [nvarchar](50) NULL,
	[DATA_SOURCE] [nvarchar](50) NULL,
	[FILE_DATE] [datetime2](7) NULL,
	[UPLOADED_BY] [nvarchar](50) NULL,
	[UPLOADED_DATE] [datetime2](7) NULL,
	[GC_GIS_ID] [int] NULL,
	[COMMENTS] [nvarchar](200) NULL,
	[MIGRATION_SOURCENAME] [nvarchar](100) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[SHAPE] [geometry] NULL,
	[CURR_FILE_FLAG] [int] NULL,
	[STORM_ADV_NUM] [varchar](50) NULL,
	[STORM_ATCF_ID] [varchar](50) NULL,
	[STORM_CATG_ID] [varchar](50) NULL,
	[STORM_CATG_DESC] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[country_level_names]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[country_level_names](
	[country_name] [varchar](100) NULL,
	[iso2] [varchar](2) NULL,
	[tier] [int] NULL,
	[zonation] [varchar](100) NULL,
	[zonation_national] [varchar](100) NULL,
	[zonation_system_label] [varchar](100) NULL,
	[zonation_code] [varchar](4) NULL,
	[lvl_final] [int] NULL,
	[lvl_run1] [int] NULL,
	[g_country_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[derived_metric_expression]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[derived_metric_expression](
	[exp_id] [int] NULL,
	[exp_name] [varchar](30) NULL,
	[field_id_1] [int] NULL,
	[field_id_2] [int] NULL,
	[exp_operator] [int] NULL,
	[first_field_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[derived_metric_formula]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[derived_metric_formula](
	[formula_id] [int] NULL,
	[drv_met_id] [int] NULL,
	[exp_id] [int] NULL,
	[exp_order] [int] NULL,
	[operator_type] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[deterministic_category_config]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[deterministic_category_config](
	[category_id] [int] NOT NULL,
	[scenario_id] [int] NULL,
	[category_name] [varchar](500) NULL,
	[category_value] [varchar](100) NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[deterministic_layer_config]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[deterministic_layer_config](
	[scenario_id] [int] NULL,
	[service_url] [varchar](500) NULL,
	[event_name] [varchar](100) NULL,
	[portal_id] [varchar](200) NULL,
	[display_name] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[deterministic_results]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[deterministic_results](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[scenario_id] [int] NULL,
	[shift_id] [varchar](50) NULL,
	[scenario_category] [varchar](100) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[gis_id] [int] NULL,
	[event_name] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[deterministic_status]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[deterministic_status](
	[analysis_id] [int] NOT NULL,
	[scenario_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[scenario_name] [varchar](100) NULL,
	[scenario_view] [varchar](30) NULL,
	[status] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[user_id] [varchar](32) NULL,
	[is_deleted] [int] NULL,
	[error_details] [varchar](1000) NULL,
	[ags_job_id] [varchar](100) NULL,
	[last_saved_by] [varchar](32) NULL,
	[saved_on] [datetime] NULL,
	[field_id] [int] NULL,
	[filter_trans_id] [varchar](36) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[filter_transaction]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[filter_transaction](
	[filter_trans_id] [varchar](36) NULL,
	[portfolio_id] [int] NULL,
	[user_id] [varchar](32) NULL,
	[filter_id] [int] NULL,
	[condition_type] [varchar](32) NULL,
	[criteria_id] [varchar](100) NULL,
	[created_on] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fme_esri_maxid]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fme_esri_maxid](
	[peril] [varchar](100) NULL,
	[fid] [bigint] NULL,
	[update_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[geocoded_sites]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geocoded_sites](
	[portfolio_id] [bigint] NULL,
	[site_id] [bigint] NULL,
	[latitude] [numeric](12, 9) NULL,
	[longitude] [numeric](12, 9) NULL,
	[matchcode_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[geometry_columns]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geometry_columns](
	[f_table_catalog] [nvarchar](256) NOT NULL,
	[f_table_schema] [nvarchar](256) NOT NULL,
	[f_table_name] [nvarchar](256) NOT NULL,
	[f_geometry_column] [nvarchar](256) NOT NULL,
	[geometry_type] [int] NOT NULL,
	[coord_dimension] [int] NOT NULL,
	[srid] [int] NOT NULL,
	[dissolve_column] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[group_portfolio]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[group_portfolio](
	[portfolio_id] [int] NULL,
	[group_id] [varchar](50) NULL,
	[status] [smallint] NULL,
	[active] [smallint] NULL,
	[pre_assigned] [smallint] NULL,
	[created_by] [varchar](100) NULL,
	[created_on] [timestamp] NOT NULL,
	[modified_by] [varchar](100) NULL,
	[modified_on] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hazard_ca_flood]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_ca_flood](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_category_config]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hazard_category_config](
	[hazard_id] [int] NULL,
	[category_name] [varchar](500) NULL,
	[value_from] [numeric](12, 4) NULL,
	[value_to] [numeric](12, 4) NULL,
	[loss_ratio] [numeric](12, 4) NULL,
	[category_id] [int] NULL,
	[red_clr] [smallint] NULL,
	[green_clr] [smallint] NULL,
	[blue_clr] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hazard_cz_fld_100]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_cz_fld_100](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_cz_fld_ext]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_cz_fld_ext](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_en_fld_zon]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_en_fld_zon](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_eu_eqk_475]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_eu_eqk_475](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_flood]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_flood](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_fr_fld_100]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_fr_fld_100](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_hs_fld_apr]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_hs_fld_apr](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_hs_fld_jba]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_hs_fld_jba](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_it_fld_100]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_it_fld_100](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_layer_config]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hazard_layer_config](
	[hazard_id] [int] NULL,
	[service_url] [varchar](500) NULL,
	[band_id] [int] NULL,
	[hazard_name] [varchar](500) NULL,
	[portal_id] [varchar](200) NULL,
	[hz_display_name] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hazard_ml_fld_100]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_ml_fld_100](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_ml_fld_zon]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_ml_fld_zon](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_pt_fld_100]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_pt_fld_100](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_status]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hazard_status](
	[analysis_id] [int] NOT NULL,
	[hazard_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[hazard_view] [varchar](20) NULL,
	[status] [varchar](20) NULL,
	[is_deleted] [smallint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[user_id] [varchar](32) NULL,
	[error_details] [varchar](1000) NULL,
	[ags_job_id] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hazard_test_1]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_test_1](
	[portfolio_id] [int] NULL,
	[hazard_id] [int] NULL,
	[status] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_us_fld_100]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_us_fld_100](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_us_flood]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_us_flood](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_view_config]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_view_config](
	[sql1] [nvarchar](4000) NULL,
	[sql2] [nvarchar](4000) NULL,
	[sql3] [nvarchar](4000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_wd_cyc_100]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_wd_cyc_100](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_wd_cyc_1k]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_wd_cyc_1k](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_wd_eqk_475]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_wd_eqk_475](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_wd_fld_1k]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_wd_fld_1k](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_wildfire]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_wildfire](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hazard_za_fld_100]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hazard_za_fld_100](
	[site_id] [bigint] NULL,
	[analysis_id] [int] NULL,
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[hazard_id] [int] NULL,
	[hazard_value] [int] NULL,
	[hazard_category] [nvarchar](50) NULL,
	[category_id] [int] NULL,
	[tiv_loss] [float] NULL,
	[loss_ratio] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[idpt]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idpt](
	[id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[job_param_values]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[job_param_values](
	[queue_id] [varchar](36) NULL,
	[job_id] [int] NULL,
	[param_id] [int] NULL,
	[param_val] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ltest]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ltest](
	[id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lu_air_event_info]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_air_event_info](
	[air_event_id] [int] NULL,
	[modelid] [int] NULL,
	[event] [int] NULL,
	[air_event_year] [int] NULL,
	[air_event_day] [int] NULL,
	[air_event_description] [varchar](200) NULL,
	[eq_depth] [numeric](6, 3) NULL,
	[epicenter] [char](1) NULL,
	[magnitude] [numeric](6, 3) NULL,
	[landfall] [char](1) NULL,
	[saffsimpson1] [int] NULL,
	[segmentid1] [int] NULL,
	[cenpress1] [numeric](6, 1) NULL,
	[maxwind1] [numeric](6, 1) NULL,
	[longitude1] [numeric](6, 2) NULL,
	[latitude1] [numeric](6, 2) NULL,
	[areaname1] [varchar](60) NULL,
	[subareaname1] [varchar](60) NULL,
	[saffsimpson2] [int] NULL,
	[segmentid2] [int] NULL,
	[cenpress2] [numeric](6, 1) NULL,
	[maxwind2] [numeric](6, 1) NULL,
	[longitude2] [numeric](6, 2) NULL,
	[latitude2] [numeric](6, 2) NULL,
	[areaname2] [varchar](60) NULL,
	[subareaname2] [varchar](60) NULL,
	[saffsimpson3] [int] NULL,
	[segmentid3] [int] NULL,
	[cenpress3] [numeric](6, 1) NULL,
	[maxwind3] [numeric](6, 1) NULL,
	[longitude3] [numeric](6, 2) NULL,
	[latitude3] [numeric](6, 2) NULL,
	[areaname3] [varchar](60) NULL,
	[subareaname3] [varchar](60) NULL,
	[saffsimpson4] [int] NULL,
	[segmentid4] [int] NULL,
	[cenpress4] [numeric](6, 1) NULL,
	[maxwind4] [numeric](6, 1) NULL,
	[longitude4] [numeric](6, 2) NULL,
	[latitude4] [numeric](6, 2) NULL,
	[areaname4] [varchar](60) NULL,
	[subareaname4] [varchar](60) NULL,
	[saffsimpson5] [int] NULL,
	[segmentid54] [int] NULL,
	[cenpress5] [numeric](6, 1) NULL,
	[maxwind5] [numeric](6, 1) NULL,
	[longitude5] [numeric](6, 2) NULL,
	[latitude5] [numeric](6, 2) NULL,
	[areaname5] [varchar](60) NULL,
	[subareaname5] [varchar](60) NULL,
	[model_id] [smallint] NULL,
	[air_source] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_analysis_field]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_analysis_field](
	[field_id] [int] NULL,
	[field_name] [varchar](30) NULL,
	[field_type] [smallint] NULL,
	[format_type] [smallint] NULL,
	[src_col_name] [varchar](30) NULL,
	[field_formula] [varchar](100) NULL,
	[aggregate_by] [smallint] NULL,
	[is_exportable] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_analysis_status]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_analysis_status](
	[analysis_status_id] [smallint] NOT NULL,
	[analysis_status] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_book]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_book](
	[book_id] [int] NULL,
	[book_name] [varchar](50) NULL,
	[cat_loader_flag] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_const_occ_lob_code]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_const_occ_lob_code](
	[lob_id] [int] NULL,
	[analysis_category_id] [int] NULL,
	[const_occ_indicator] [char](1) NULL,
	[scheme] [varchar](20) NULL,
	[code] [varchar](20) NULL,
	[code_description] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_construction]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_construction](
	[const_id] [varchar](25) NOT NULL,
	[const_ind] [varchar](10) NOT NULL,
	[const_short_desc] [varchar](40) NULL,
	[const_desc] [varchar](80) NULL,
	[vendor_id] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_country]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_country](
	[g_country_id] [int] NULL,
	[country_name] [varchar](50) NULL,
	[iso2] [varchar](2) NULL,
	[iso3] [varchar](3) NULL,
	[rp_avlbl] [int] NULL,
	[air_iso_code] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_derived_metric]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_derived_metric](
	[drv_met_id] [int] NULL,
	[drv_met_name] [varchar](80) NULL,
	[drv_formula_id] [int] NULL,
	[decimal_precision] [int] NULL,
	[field_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_eptype]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_eptype](
	[eptype] [int] NULL,
	[eptype_desc] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_field_type]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_field_type](
	[field_type_id] [int] NULL,
	[field_type_name] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_filter]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_filter](
	[filter_id] [int] NOT NULL,
	[filter_category_id] [int] NOT NULL,
	[field_id] [int] NOT NULL,
	[col_data_type] [char](3) NOT NULL,
	[is_range_filter] [smallint] NOT NULL,
	[is_list_filter] [smallint] NOT NULL,
	[display_order] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_filter_category]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_filter_category](
	[filter_category_id] [int] NULL,
	[category_name] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_filter_country]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_filter_country](
	[country_id] [int] NULL,
	[iso2] [char](2) NULL,
	[country_name] [varchar](75) NULL,
	[filter_id] [int] NULL,
	[filter_display_name] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_filter_exception]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_filter_exception](
	[exception_cd] [varchar](50) NULL,
	[exception_msg] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_filter_metric]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_filter_metric](
	[book_id] [int] NULL,
	[metric_id] [int] NULL,
	[filter_id] [int] NULL,
	[filter_display_name] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_filter_transaction]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_filter_transaction](
	[filter_trans_id] [varchar](36) NULL,
	[portfolio_id] [int] NULL,
	[country_id] [int] NULL,
	[user_id] [varchar](32) NULL,
	[filter_id] [int] NULL,
	[condition_type] [varchar](32) NULL,
	[criteria_id] [varchar](100) NULL,
	[created_on] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_geocode_level]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_geocode_level](
	[g_level] [int] NULL,
	[description] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_group]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_group](
	[group_id] [varchar](50) NOT NULL,
	[group_name] [varchar](250) NULL,
	[created_on] [datetime] NULL,
	[created_by] [varchar](100) NULL,
	[modified_on] [datetime] NULL,
	[modified_by] [varchar](100) NULL,
	[active] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_group_test]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_group_test](
	[group_id] [varchar](50) NOT NULL,
	[group_name] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_job]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_job](
	[job_id] [int] NULL,
	[job_name] [varchar](60) NULL,
	[server_name] [varchar](100) NULL,
	[max_jobs] [int] NULL,
	[chk_prog_src_table_name] [varchar](30) NULL,
	[chk_prog_src_col_name] [varchar](30) NULL,
	[chk_prog_src_col_val] [varchar](20) NULL,
	[chk_prog_val_data_type] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_job_old]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_job_old](
	[job_id] [int] NULL,
	[job_name] [varchar](60) NULL,
	[server_name] [varchar](100) NULL,
	[max_jobs] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_job_params]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_job_params](
	[job_id] [int] NULL,
	[param_id] [int] NULL,
	[param_nm] [varchar](30) NULL,
	[param_req_nm] [varchar](30) NULL,
	[param_type] [int] NULL,
	[submit_required] [int] NULL,
	[run_required] [int] NULL,
	[rtn_job_param] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_maplevel]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_maplevel](
	[g_country_id] [int] NULL,
	[iso2] [varchar](2) NULL,
	[country_name] [varchar](75) NULL,
	[mstr_hierarchy_name] [varchar](50) NULL,
	[mc_maplevel1] [varchar](50) NULL,
	[mc_maplevel2] [varchar](50) NULL,
	[mc_maplevel3] [varchar](50) NULL,
	[mc_maplevel4] [varchar](50) NULL,
	[mc_maplevel5] [varchar](50) NULL,
	[mc_maplevel6] [varchar](50) NULL,
	[mc_data_load_flag] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_mc_maplevel1]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_mc_maplevel1](
	[g_country_id] [int] NULL,
	[g_mc_level1_id] [bigint] NULL,
	[g_mc_geom_id] [bigint] NULL,
	[mc_level1_display] [varchar](75) NULL,
	[mc_level1_localname] [varchar](75) NULL,
	[mc_level1_name] [varchar](75) NULL,
	[mc_level1_code] [varchar](50) NULL,
	[mc_level1_type] [varchar](50) NULL,
	[mc_level1_latitude] [numeric](15, 12) NULL,
	[mc_level1_longitude] [numeric](15, 12) NULL,
	[mc_level1_vintage] [varchar](10) NULL,
	[mc_level1_userdef1] [varchar](25) NULL,
	[mc_level1_userdef2] [varchar](25) NULL,
	[mc_level1_userdef3] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_mc_maplevel2]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_mc_maplevel2](
	[g_country_id] [int] NULL,
	[g_mc_level2_id] [bigint] NULL,
	[g_mc_geom_id] [bigint] NULL,
	[mc_level2_display] [varchar](75) NULL,
	[mc_level2_localname] [varchar](75) NULL,
	[mc_level2_name] [varchar](75) NULL,
	[mc_level2_code] [varchar](50) NULL,
	[mc_level2_type] [varchar](50) NULL,
	[mc_level2_latitude] [numeric](15, 12) NULL,
	[mc_level2_longitude] [numeric](15, 12) NULL,
	[mc_level2_vintage] [varchar](10) NULL,
	[mc_level2_userdef1] [varchar](25) NULL,
	[mc_level2_userdef2] [varchar](25) NULL,
	[mc_level2_userdef3] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_mc_maplevel3]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_mc_maplevel3](
	[g_country_id] [int] NULL,
	[g_mc_level3_id] [bigint] NULL,
	[g_mc_geom_id] [bigint] NULL,
	[mc_level3_display] [varchar](200) NULL,
	[mc_level3_localname] [varchar](200) NULL,
	[mc_level3_name] [varchar](200) NULL,
	[mc_level3_code] [varchar](50) NULL,
	[mc_level3_type] [varchar](50) NULL,
	[mc_level3_latitude] [numeric](15, 12) NULL,
	[mc_level3_longitude] [numeric](15, 12) NULL,
	[mc_level3_vintage] [varchar](10) NULL,
	[mc_level3_userdef1] [varchar](25) NULL,
	[mc_level3_userdef2] [varchar](25) NULL,
	[mc_level3_userdef3] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_mc_maplevel4]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_mc_maplevel4](
	[g_country_id] [int] NULL,
	[g_mc_level4_id] [bigint] NULL,
	[g_mc_geom_id] [bigint] NULL,
	[mc_level4_display] [varchar](100) NULL,
	[mc_level4_localname] [varchar](100) NULL,
	[mc_level4_name] [varchar](100) NULL,
	[mc_level4_code] [varchar](50) NULL,
	[mc_level4_type] [varchar](50) NULL,
	[mc_level4_latitude] [numeric](15, 12) NULL,
	[mc_level4_longitude] [numeric](15, 12) NULL,
	[mc_level4_vintage] [varchar](10) NULL,
	[mc_level4_userdef1] [varchar](25) NULL,
	[mc_level4_userdef2] [varchar](25) NULL,
	[mc_level4_userdef3] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_mc_maplevel5]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_mc_maplevel5](
	[g_country_id] [int] NULL,
	[g_mc_level5_id] [bigint] NULL,
	[g_mc_geom_id] [bigint] NULL,
	[mc_level5_display] [varchar](100) NULL,
	[mc_level5_localname] [varchar](100) NULL,
	[mc_level5_name] [varchar](100) NULL,
	[mc_level5_code] [varchar](50) NULL,
	[mc_level5_type] [varchar](50) NULL,
	[mc_level5_latitude] [numeric](15, 12) NULL,
	[mc_level5_longitude] [numeric](15, 12) NULL,
	[mc_level5_vintage] [varchar](10) NULL,
	[mc_level5_userdef1] [varchar](25) NULL,
	[mc_level5_userdef2] [varchar](25) NULL,
	[mc_level5_userdef3] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_mc_maplevel6]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_mc_maplevel6](
	[g_country_id] [int] NULL,
	[g_mc_level6_id] [bigint] NULL,
	[g_mc_geom_id] [bigint] NULL,
	[mc_level6_display] [varchar](100) NULL,
	[mc_level6_localname] [varchar](100) NULL,
	[mc_level6_name] [varchar](100) NULL,
	[mc_level6_code] [varchar](50) NULL,
	[mc_level6_type] [varchar](50) NULL,
	[mc_level6_latitude] [numeric](15, 12) NULL,
	[mc_level6_longitude] [numeric](15, 12) NULL,
	[mc_level6_vintage] [varchar](10) NULL,
	[mc_level6_userdef1] [varchar](25) NULL,
	[mc_level6_userdef2] [varchar](25) NULL,
	[mc_level6_userdef3] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_metric_color_type]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_metric_color_type](
	[metric_color_type_id] [int] NOT NULL,
	[description] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_metric_format_type]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_metric_format_type](
	[metric_format_type_id] [int] NOT NULL,
	[description] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_metrics_type]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_metrics_type](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_model]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_model](
	[model_id] [int] NOT NULL,
	[vendor_id] [int] NOT NULL,
	[model_description] [varchar](50) NULL,
	[version] [varchar](10) NULL,
	[engineversion] [varchar](25) NULL,
	[cat_loader_flag] [int] NULL,
	[odi_scenario_name_main] [varchar](50) NULL,
	[odi_scenario_name_exposure] [varchar](50) NULL,
	[odi_scenario_name_results] [varchar](50) NULL,
	[odi_client_upload_scenario_name_results] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_occupancy]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_occupancy](
	[occ_id] [varchar](25) NOT NULL,
	[occ_ind] [varchar](10) NOT NULL,
	[occ_short_desc] [varchar](40) NULL,
	[occ_desc] [varchar](125) NULL,
	[vendor_id] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_peril]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_peril](
	[peril_id] [smallint] NOT NULL,
	[s_peril_id] [smallint] NOT NULL,
	[peril_description] [varchar](50) NULL,
	[cat_loader_flag] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_perspcode]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_perspcode](
	[perspcode] [varchar](2) NULL,
	[perspcode_desc] [varchar](75) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_poi_analysis_type]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_poi_analysis_type](
	[id] [smallint] NOT NULL,
	[name] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_rms_event_info]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_rms_event_info](
	[rms_event_id] [int] NOT NULL,
	[rms_event_type] [varchar](4) NULL,
	[rms_event_peril] [varchar](2) NULL,
	[rms_event_region] [varchar](2) NULL,
	[rms_event_source_id] [int] NULL,
	[rms_event_magnitude] [float] NULL,
	[rms_event_segment] [smallint] NULL,
	[rms_event_name] [varchar](40) NULL,
	[rms_event_description] [varchar](250) NULL,
	[rms_event_active] [smallint] NULL,
	[rms_event_ratecv] [float] NULL,
	[rms_event_sourcegroup] [smallint] NULL,
	[rms_event_version] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_screen]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_screen](
	[screen_id] [int] NULL,
	[screen_name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_site_field]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_site_field](
	[field_id] [int] NULL,
	[field_name] [varchar](30) NULL,
	[field_type] [int] NULL,
	[format_type] [int] NULL,
	[aggregate_formula] [varchar](250) NULL,
	[src_table_name_portfolio_agg] [varchar](30) NULL,
	[src_col_name_portfolio_agg] [varchar](30) NULL,
	[src_table_name_site] [varchar](30) NULL,
	[src_col_name_site] [varchar](30) NULL,
	[src_table_name_filter] [varchar](30) NULL,
	[src_col_name_filter] [varchar](30) NULL,
	[join_table_name] [varchar](30) NULL,
	[join_col_name] [varchar](30) NULL,
	[display_col_name] [varchar](30) NULL,
	[default_metric_flag] [smallint] NULL,
	[use_to_visualize] [smallint] NULL,
	[show_formatted] [smallint] NULL,
	[src_table_col_id] [smallint] NULL,
	[drv_formula] [varchar](30) NULL,
	[groupable] [smallint] NULL,
	[drv_formula_with_field] [varchar](3000) NULL,
	[metrics_type] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_site_field_derived]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lu_site_field_derived](
	[derived_field_id] [int] NOT NULL,
	[dependent_field_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lu_src_table_col]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_src_table_col](
	[src_table_col_id] [smallint] NULL,
	[src_col_desc] [varchar](30) NULL,
	[src_table_desc] [varchar](30) NULL,
	[metric_flag] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_underwrite_pos_model]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_underwrite_pos_model](
	[model_id] [int] NOT NULL,
	[vendor_id] [int] NOT NULL,
	[model_description] [varchar](50) NULL,
	[version] [varchar](10) NULL,
	[peril_id] [smallint] NOT NULL,
	[sort_order] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_underwrite_pos_peril]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_underwrite_pos_peril](
	[peril_id] [smallint] NOT NULL,
	[peril_description] [varchar](50) NULL,
	[sort_order] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_unitofmeasurement]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_unitofmeasurement](
	[unitofmeasurement_id] [smallint] NOT NULL,
	[unitofmeasurement] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_uwposmodel]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_uwposmodel](
	[model_id] [int] NOT NULL,
	[vendor_id] [int] NOT NULL,
	[model_description] [varchar](50) NULL,
	[version] [varchar](10) NULL,
	[peril_id] [smallint] NOT NULL,
	[sort_order] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lu_uwposperil]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lu_uwposperil](
	[peril_id] [smallint] NOT NULL,
	[peril_description] [varchar](50) NULL,
	[sort_order] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mc_guid_geom_nzgrid]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mc_guid_geom_nzgrid](
	[OBJECTID] [int] NOT NULL,
	[g_country_id] [int] NULL,
	[g_mc_level1_id] [nvarchar](20) NULL,
	[g_mc_level2_id] [nvarchar](20) NULL,
	[g_mc_level3_id] [nvarchar](20) NULL,
	[g_mc_level4_id] [nvarchar](20) NULL,
	[g_mc_level5_id] [nvarchar](20) NULL,
	[g_mc_level6_id] [nvarchar](20) NULL,
	[g_mc_level1_wgt] [numeric](38, 8) NULL,
	[g_mc_level2_wgt] [numeric](38, 8) NULL,
	[g_mc_level3_wgt] [numeric](38, 8) NULL,
	[g_mc_level4_wgt] [numeric](38, 8) NULL,
	[g_mc_level5_wgt] [numeric](38, 8) NULL,
	[g_mc_level6_wgt] [numeric](38, 8) NULL,
	[geo_unit_id] [nvarchar](254) NULL,
	[nz_grid_id] [int] NULL,
	[maxx] [numeric](38, 8) NULL,
	[maxy] [numeric](38, 8) NULL,
	[minx] [numeric](38, 8) NULL,
	[miny] [numeric](38, 8) NULL,
	[SHAPE] [geometry] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[metric]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[metric](
	[metric_id] [int] NOT NULL,
	[book_id] [int] NOT NULL,
	[metric_format_type_id] [int] NOT NULL,
	[metric_name] [varchar](100) NOT NULL,
	[table_name] [varchar](30) NOT NULL,
	[col_name] [varchar](20) NOT NULL,
	[formula] [varchar](60) NULL,
	[default_metric_flag] [smallint] NULL,
	[src_table_name] [varchar](30) NOT NULL,
	[src_col_name] [varchar](20) NOT NULL,
	[show_formatted] [smallint] NULL,
	[use_to_visualize] [smallint] NULL,
	[show_at_site_level] [smallint] NULL,
	[sort_order] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[people]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[people](
	[person_id] [int] NOT NULL,
	[first_name] [varchar](20) NULL,
	[last_name] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[point_accumulation_errors]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[point_accumulation_errors](
	[analysis_id] [bigint] NULL,
	[session_id] [bigint] NULL,
	[error_message] [varchar](8000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pointaccumulation_analysis_input]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pointaccumulation_analysis_input](
	[pa_analysis_id] [int] NOT NULL,
	[pa_analysis_name] [varchar](100) NULL,
	[cp_portfolio_id] [int] NULL,
	[sp_portfolio_id] [int] NULL,
	[unitofmeasurement] [smallint] NULL,
	[accumulationmetric] [int] NULL,
	[results_count] [int] NULL,
	[filtertransactionid] [varchar](50) NULL,
	[filterwhereclause] [varchar](8000) NULL,
	[group_id] [varchar](50) NULL,
	[created_user] [varchar](50) NULL,
	[updated_user] [varchar](50) NULL,
	[created_date] [datetime] NULL,
	[updated_date] [datetime] NULL,
	[analysis_type] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pointaccumulation_analysis_log]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pointaccumulation_analysis_log](
	[pa_analysis_id] [int] NOT NULL,
	[pa_analysis_log] [varchar](8000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pointaccumulation_analysis_session_status]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pointaccumulation_analysis_session_status](
	[id] [bigint] NULL,
	[status] [nvarchar](255) NULL,
	[command] [nvarchar](2048) NULL,
	[created_date] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pointaccumulation_analysis_status]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pointaccumulation_analysis_status](
	[pa_analysis_id] [int] NOT NULL,
	[analysis_status] [int] NULL,
	[create_date] [datetime] NULL,
	[sessionid] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pointaccumulation_buffer_zone]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pointaccumulation_buffer_zone](
	[pa_analysis_id] [int] NOT NULL,
	[bufferzone_id] [int] NULL,
	[buffer_maxvalue] [float] NULL,
	[buffer_minvalue] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pointaccumulation_cluster_highlow]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pointaccumulation_cluster_highlow](
	[pa_analysis_id] [int] NOT NULL,
	[cluster_id] [int] NULL,
	[highlow_indication] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POINTACCUMULATION_CP_RESULTS]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POINTACCUMULATION_CP_RESULTS](
	[OBJECTID] [int] IDENTITY(1,1) NOT NULL,
	[pa_analysis_id] [int] NOT NULL,
	[cp_site_id] [numeric](19, 0) NULL,
	[cp_site_name] [nvarchar](50) NULL,
	[buffer_maxvalue] [numeric](15, 0) NULL,
	[cp_site_shape] [geometry] NULL,
	[g_mc_level1_id] [numeric](19, 0) NULL,
	[g_mc_level2_id] [numeric](19, 0) NULL,
	[g_mc_level3_id] [numeric](19, 0) NULL,
	[g_mc_level4_id] [numeric](19, 0) NULL,
	[g_mc_level5_id] [numeric](19, 0) NULL,
	[g_mc_level6_id] [numeric](19, 0) NULL,
	[accumulation_sum] [numeric](15, 0) NULL,
	[highlow_indication] [int] NULL,
	[g_country_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OBJECTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pointaccumulation_sp_results]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pointaccumulation_sp_results](
	[OBJECTID] [int] NOT NULL,
	[pa_analysis_id] [int] NULL,
	[bufferzone_id] [int] NULL,
	[sp_portfolio_id] [int] NULL,
	[cp_site_id] [nvarchar](20) NULL,
	[sp_site_id] [nvarchar](20) NULL,
	[sp_site_shape] [nvarchar](75) NULL,
	[highlow_indication] [int] NULL,
	[account_id] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pointaccumulation_sp_results_wo_shape]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pointaccumulation_sp_results_wo_shape](
	[pa_analysis_id] [int] NOT NULL,
	[bufferzone_id] [int] NULL,
	[sp_portfolio_id] [int] NULL,
	[cp_site_id] [bigint] NULL,
	[sp_site_id] [bigint] NULL,
	[highlow_indication] [int] NULL,
	[account_id] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[points]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[points](
	[id] [int] NULL,
	[my_geom] [varchar](8000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[policy_exposure]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[policy_exposure](
	[portfolio_id] [int] NOT NULL,
	[peril_id] [int] NOT NULL,
	[policy_id] [bigint] NOT NULL,
	[account_id] [bigint] NOT NULL,
	[account_num] [char](30) NOT NULL,
	[policy_status] [varchar](25) NULL,
	[pol_lob] [varchar](50) NULL,
	[policy_name] [char](60) NULL,
	[policy_num] [char](40) NULL,
	[incept_date] [date] NULL,
	[expire_date] [date] NULL,
	[deduct_type] [char](6) NULL,
	[limit_type] [char](6) NULL,
	[prorata] [float] NULL,
	[undercover] [float] NULL,
	[premium] [float] NULL,
	[policy_deduct] [float] NULL,
	[policy_bl_deduct] [float] NULL,
	[min_deduct] [float] NULL,
	[max_deduct] [float] NULL,
	[policy_limit] [float] NULL,
	[policy_bl_grosslimit] [float] NULL,
	[cov1_limit] [float] NULL,
	[cov1_deduct] [float] NULL,
	[cov2_limit] [float] NULL,
	[cov2_deduct] [float] NULL,
	[cov3_limit] [float] NULL,
	[cov3_deduct] [float] NULL,
	[cov4_limit] [float] NULL,
	[cov4_deduct] [float] NULL,
	[cov5_limit] [float] NULL,
	[cov5_deduct] [float] NULL,
	[cov6_limit] [float] NULL,
	[cov6_deduct] [float] NULL,
	[agg_deduct] [float] NULL,
	[cmb_limit] [float] NULL,
	[cmbinded_deduct] [float] NULL,
	[sub_limit] [float] NULL,
	[sub_deduct] [float] NULL,
	[p_udf_met1] [float] NULL,
	[p_udf_met2] [float] NULL,
	[p_udf_met3] [float] NULL,
	[p_udf_met4] [float] NULL,
	[p_udf_met5] [float] NULL,
	[p_udf_met6] [float] NULL,
	[p_udf_met7] [float] NULL,
	[p_udf_met8] [float] NULL,
	[p_udf_met9] [float] NULL,
	[p_udf_met10] [float] NULL,
	[p_udf_met11] [float] NULL,
	[p_udf_met12] [float] NULL,
	[p_udf_met13] [float] NULL,
	[p_udf_met14] [float] NULL,
	[p_udf_met15] [float] NULL,
	[p_udf_attr1] [varchar](40) NULL,
	[p_udf_attr2] [varchar](40) NULL,
	[p_udf_attr3] [varchar](40) NULL,
	[p_udf_attr4] [varchar](40) NULL,
	[p_udf_attr5] [varchar](40) NULL,
	[p_udf_attr6] [varchar](40) NULL,
	[p_udf_attr7] [varchar](40) NULL,
	[p_udf_attr8] [varchar](40) NULL,
	[p_udf_attr9] [varchar](40) NULL,
	[p_udf_attr10] [varchar](40) NULL,
	[p_udf_attr11] [varchar](40) NULL,
	[p_udf_attr12] [varchar](40) NULL,
	[p_udf_attr13] [varchar](40) NULL,
	[p_udf_attr14] [varchar](40) NULL,
	[p_udf_attr15] [varchar](40) NULL,
	[policy_comments] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[policy_loss_analysis]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[policy_loss_analysis](
	[portfolio_id] [int] NOT NULL,
	[analysis_id] [int] NOT NULL,
	[policy_id] [bigint] NOT NULL,
	[account_id] [bigint] NOT NULL,
	[vendor_id] [int] NOT NULL,
	[model_id] [int] NOT NULL,
	[peril_id] [int] NOT NULL,
	[gross_loss] [float] NULL,
	[damage_loss] [float] NULL,
	[net_loss] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[portfolio]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[portfolio](
	[portfolio_id] [int] NOT NULL,
	[peril_id] [int] NOT NULL,
	[book_id] [int] NOT NULL,
	[portfolio_name] [varchar](100) NULL,
	[as_of_date] [date] NULL,
	[top_extent] [float] NULL,
	[bottom_extent] [float] NULL,
	[right_extent] [float] NULL,
	[left_extent] [float] NULL,
	[site_count] [int] NULL,
	[policy_count] [int] NULL,
	[account_count] [int] NULL,
	[create_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[portfolio_account]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[portfolio_account](
	[portfolio_id] [int] NOT NULL,
	[account_id] [bigint] NOT NULL,
	[account_name] [varchar](60) NULL,
	[account_num] [varchar](40) NULL,
	[company] [varchar](30) NULL,
	[division] [varchar](30) NULL,
	[producer] [varchar](30) NULL,
	[branch] [varchar](30) NULL,
	[peril_id] [int] NOT NULL,
	[a_udf_met1] [float] NULL,
	[a_udf_met2] [float] NULL,
	[a_udf_met3] [float] NULL,
	[a_udf_met4] [float] NULL,
	[a_udf_met5] [float] NULL,
	[a_udf_attr1] [varchar](40) NULL,
	[a_udf_attr2] [varchar](40) NULL,
	[a_udf_attr3] [varchar](40) NULL,
	[a_udf_attr4] [varchar](40) NULL,
	[a_udf_attr5] [varchar](40) NULL,
	[a_udf_attr6] [varchar](40) NULL,
	[a_udf_attr7] [varchar](40) NULL,
	[a_udf_attr8] [varchar](40) NULL,
	[a_udf_attr9] [varchar](40) NULL,
	[a_udf_attr10] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[portfolio_agg]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[portfolio_agg](
	[group_id] [int] NULL,
	[portfolio_id] [int] NOT NULL,
	[portfolio_name] [varchar](250) NOT NULL,
	[as_of_date] [date] NULL,
	[upload_date] [datetime] NULL,
	[most_recent_flag] [varchar](1) NULL,
	[analysis_id] [int] NULL,
	[model_id] [int] NULL,
	[model_description] [varchar](50) NULL,
	[book_id] [int] NULL,
	[peril_id] [int] NULL,
	[total_tiv] [float] NULL,
	[employee_count] [float] NULL,
	[sum_payroll] [float] NULL,
	[site_count] [bigint] NULL,
	[policy_count] [bigint] NULL,
	[account_count] [bigint] NULL,
	[gross_aal] [float] NULL,
	[eal_gross_loss] [float] NULL,
	[gross_exposed_limit] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[portfolio_analysis]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[portfolio_analysis](
	[analysis_id] [int] NOT NULL,
	[portfolio_id] [int] NOT NULL,
	[model_id] [int] NULL,
	[peril_id] [int] NOT NULL,
	[analysis_name] [varchar](70) NULL,
	[demandsurge_flag] [smallint] NULL,
	[stormsurge_flag] [smallint] NULL,
	[nearterm_flag] [smallint] NULL,
	[longterm_flag] [smallint] NULL,
	[create_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[portfolio_exposure_loss_by_ct]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[portfolio_exposure_loss_by_ct](
	[portfolio_id] [int] NOT NULL,
	[country_id] [int] NULL,
	[peril_id] [int] NOT NULL,
	[currency] [char](3) NULL,
	[premium] [float] NULL,
	[risk_count] [numeric](38, 0) NULL,
	[site_limit] [float] NULL,
	[site_deduct] [float] NULL,
	[site_bl_limit] [float] NULL,
	[site_bl_deduct] [float] NULL,
	[cmb_limit] [float] NULL,
	[cmb_deduct] [float] NULL,
	[cov1val] [float] NULL,
	[cov1limit] [float] NULL,
	[cov1deduct] [float] NULL,
	[cov2val] [float] NULL,
	[cov2limit] [float] NULL,
	[cov2deduct] [float] NULL,
	[cov3val] [float] NULL,
	[cov3limit] [float] NULL,
	[cov3deduct] [float] NULL,
	[cov4val] [float] NULL,
	[cov4limit] [float] NULL,
	[cov4deduct] [float] NULL,
	[cov4days] [float] NULL,
	[cov5val] [float] NULL,
	[cov5limit] [float] NULL,
	[cov5deduct] [float] NULL,
	[cov6val] [float] NULL,
	[cov6limit] [float] NULL,
	[cov6deduct] [float] NULL,
	[agg_limit] [float] NULL,
	[empl_count] [float] NULL,
	[calc_num_empl] [float] NULL,
	[payroll] [float] NULL,
	[max_empl] [float] NULL,
	[shift1] [float] NULL,
	[shift2] [float] NULL,
	[shift3] [float] NULL,
	[shift4] [float] NULL,
	[analysis_id] [int] NULL,
	[vendor_id] [int] NULL,
	[model_id] [int] NULL,
	[gross_loss] [float] NULL,
	[damage_loss] [float] NULL,
	[net_loss] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[portfolio_extent]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portfolio_extent](
	[portfolio_id] [int] NOT NULL,
	[left_extent] [float] NULL,
	[bottom_extent] [float] NULL,
	[right_extent] [float] NULL,
	[top_extent] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[portfolio_filter_layout_config]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portfolio_filter_layout_config](
	[portfolio_id] [int] NOT NULL,
	[src_table_col_id] [int] NOT NULL,
	[is_null] [smallint] NOT NULL,
	[is_analysis_done] [smallint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[portfolio_isnull_layout_config]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portfolio_isnull_layout_config](
	[portfolio_id] [int] NOT NULL,
	[src_table_col_id] [int] NOT NULL,
	[is_null] [smallint] NOT NULL,
	[is_analysis_done] [smallint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[portfolio_policy_sites]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portfolio_policy_sites](
	[portfolio_id] [int] NOT NULL,
	[account_id] [bigint] NOT NULL,
	[policy_id] [bigint] NOT NULL,
	[site_id] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[portfolio_site_field_config]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[portfolio_site_field_config](
	[portfolio_id] [int] NULL,
	[field_id] [int] NULL,
	[field_name] [varchar](30) NULL,
	[format_type] [int] NULL,
	[display_col_name] [varchar](30) NULL,
	[aggregate_formula] [varchar](250) NULL,
	[display_order] [int] NULL,
	[default_metric_flag] [smallint] NULL,
	[use_to_visualize] [smallint] NULL,
	[show_formatted] [smallint] NULL,
	[is_null] [smallint] NULL,
	[null_analysis_done] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[portfolio_trunc_reload]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[portfolio_trunc_reload](
	[portfolio_id] [int] NULL,
	[batch_id] [char](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[portfolio_validation_time]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portfolio_validation_time](
	[portfolio_id] [bigint] NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[property]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[property](
	[property_key] [varchar](255) NOT NULL,
	[property_value] [varchar](4000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[property_geo_service]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[property_geo_service](
	[filter_id] [int] NULL,
	[level] [int] NULL,
	[url] [varchar](1000) NULL,
	[table_url] [varchar](1000) NULL,
	[table_id_field] [varchar](30) NULL,
	[table_name_field] [varchar](30) NULL,
	[table_type_field] [varchar](30) NULL,
	[field_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[saved_filter]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[saved_filter](
	[filter_trans_id] [varchar](36) NOT NULL,
	[saved_name] [varchar](100) NOT NULL,
	[filter_comments] [varchar](300) NULL,
	[group_id] [varchar](50) NULL,
	[is_published] [smallint] NULL,
	[published_date] [datetime] NULL,
	[book_id] [int] NOT NULL,
	[saved_analysis] [smallint] NULL,
	[saved_on] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[screen_site_field_exclusion]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[screen_site_field_exclusion](
	[screen_id] [int] NULL,
	[field_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[site_characteristics]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[site_characteristics](
	[attr_id] [int] NOT NULL,
	[book_id] [int] NOT NULL,
	[attr_format_type_id] [int] NOT NULL,
	[attr_name] [varchar](100) NOT NULL,
	[table_name] [varchar](30) NOT NULL,
	[col_name] [varchar](20) NOT NULL,
	[formula] [varchar](60) NULL,
	[default_metric_flag] [smallint] NULL,
	[show_formatted] [smallint] NULL,
	[use_to_visualize] [smallint] NULL,
	[show_at_site_level] [smallint] NULL,
	[sort_order] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[site_exposure]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_exposure](
	[portfolio_id] [int] NULL,
	[peril_id] [int] NULL,
	[account_id] [nvarchar](20) NULL,
	[site_id] [nvarchar](20) NULL,
	[arcgis_id] [int] NULL,
	[nz_grid_id] [nvarchar](20) NULL,
	[shape] [geometry] NULL,
	[sitenum] [nvarchar](20) NULL,
	[sitename] [nvarchar](50) NULL,
	[site_lat] [numeric](13, 9) NULL,
	[account_num] [nvarchar](40) NULL,
	[site_long] [numeric](13, 9) NULL,
	[country_id] [int] NULL,
	[currency] [nvarchar](3) NULL,
	[g_mc_level1_id] [nvarchar](20) NULL,
	[g_mc_level2_id] [nvarchar](20) NULL,
	[g_mc_level3_id] [nvarchar](20) NULL,
	[g_mc_level4_id] [nvarchar](20) NULL,
	[g_mc_level5_id] [nvarchar](20) NULL,
	[g_mc_level6_id] [nvarchar](20) NULL,
	[g_level] [int] NULL,
	[g_level_source_id] [int] NULL,
	[full_address] [nvarchar](500) NULL,
	[street_addr] [nvarchar](350) NULL,
	[municipality] [nvarchar](50) NULL,
	[postalcode] [nvarchar](15) NULL,
	[cresta] [nvarchar](50) NULL,
	[blg_num] [int] NULL,
	[blg_name] [nvarchar](50) NULL,
	[lob1] [nvarchar](50) NULL,
	[lob2] [nvarchar](50) NULL,
	[occ_short_desc] [nvarchar](50) NULL,
	[const_short_desc] [nvarchar](50) NULL,
	[m_air_occind] [nvarchar](3) NULL,
	[m_air_occ] [nvarchar](4) NULL,
	[m_air_constind] [nvarchar](3) NULL,
	[m_air_const] [nvarchar](3) NULL,
	[m_rms_occind] [nvarchar](7) NULL,
	[m_rms_occ] [nvarchar](5) NULL,
	[m_rms_constind] [nvarchar](7) NULL,
	[m_rms_const] [nvarchar](5) NULL,
	[num_stories] [int] NULL,
	[year_built] [int] NULL,
	[expire_date] [datetime] NULL,
	[incept_date] [datetime] NULL,
	[cov1val] [numeric](38, 8) NULL,
	[cov2val] [numeric](38, 8) NULL,
	[cov3val] [numeric](38, 8) NULL,
	[cov4val] [numeric](38, 8) NULL,
	[cov5val] [numeric](38, 8) NULL,
	[cov6val] [numeric](38, 8) NULL,
	[risk_count] [int] NULL,
	[shift_count] [int] NULL,
	[payroll] [numeric](38, 8) NULL,
	[empl_count] [numeric](38, 8) NULL,
	[calc_num_empl] [numeric](38, 8) NULL,
	[max_empl] [numeric](38, 8) NULL,
	[shift1] [numeric](38, 8) NULL,
	[shift2] [numeric](38, 8) NULL,
	[shift3] [numeric](38, 8) NULL,
	[shift4] [numeric](38, 8) NULL,
	[deduct_type] [nvarchar](6) NULL,
	[limit_type] [nvarchar](6) NULL,
	[premium] [numeric](38, 8) NULL,
	[site_limit] [numeric](38, 8) NULL,
	[site_bl_limit] [numeric](38, 8) NULL,
	[site_deduct] [numeric](38, 8) NULL,
	[site_bl_deduct] [numeric](38, 8) NULL,
	[cmb_deduct] [numeric](38, 8) NULL,
	[cmb_limit] [numeric](38, 8) NULL,
	[agg_limit] [numeric](38, 8) NULL,
	[cov1limit] [numeric](38, 8) NULL,
	[cov1deduct] [numeric](38, 8) NULL,
	[cov2limit] [numeric](38, 8) NULL,
	[cov2deduct] [numeric](38, 8) NULL,
	[cov3limit] [numeric](38, 8) NULL,
	[cov3deduct] [numeric](38, 8) NULL,
	[cov4limit] [numeric](38, 8) NULL,
	[cov4deduct] [numeric](38, 8) NULL,
	[cov4days] [numeric](38, 8) NULL,
	[cov5limit] [numeric](38, 8) NULL,
	[cov5deduct] [numeric](38, 8) NULL,
	[cov6limit] [numeric](38, 8) NULL,
	[cov6deduct] [numeric](38, 8) NULL,
	[rms_distance_coast] [numeric](38, 8) NULL,
	[s_udf_met1] [numeric](38, 8) NULL,
	[s_udf_met2] [numeric](38, 8) NULL,
	[s_udf_met3] [numeric](38, 8) NULL,
	[s_udf_met4] [numeric](38, 8) NULL,
	[s_udf_met5] [numeric](38, 8) NULL,
	[s_udf_met6] [numeric](38, 8) NULL,
	[s_udf_met7] [numeric](38, 8) NULL,
	[s_udf_met8] [numeric](38, 8) NULL,
	[s_udf_met9] [numeric](38, 8) NULL,
	[s_udf_met10] [numeric](38, 8) NULL,
	[s_udf_attr1] [nvarchar](40) NULL,
	[s_udf_attr2] [nvarchar](40) NULL,
	[s_udf_attr3] [nvarchar](40) NULL,
	[s_udf_attr4] [nvarchar](40) NULL,
	[s_udf_attr5] [nvarchar](40) NULL,
	[s_udf_attr6] [nvarchar](40) NULL,
	[s_udf_attr7] [nvarchar](40) NULL,
	[s_udf_attr8] [nvarchar](40) NULL,
	[s_udf_attr9] [nvarchar](40) NULL,
	[s_udf_attr10] [nvarchar](40) NULL,
	[site_comments] [nvarchar](300) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[site_exposure_external_hz]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_exposure_external_hz](
	[site_id] [bigint] NULL,
	[site_lat] [numeric](12, 9) NULL,
	[site_long] [numeric](12, 9) NULL,
	[hazard_category_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[site_exposure_old]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_exposure_old](
	[portfolio_id] [int] NULL,
	[peril_id] [int] NULL,
	[account_id] [nvarchar](20) NULL,
	[site_id] [nvarchar](20) NULL,
	[arcgis_id] [int] NULL,
	[nz_grid_id] [nvarchar](20) NULL,
	[shape] [geometry] NULL,
	[sitenum] [nvarchar](20) NULL,
	[sitename] [nvarchar](50) NULL,
	[site_lat] [numeric](13, 9) NULL,
	[account_num] [nvarchar](40) NULL,
	[site_long] [numeric](13, 9) NULL,
	[country_id] [int] NULL,
	[currency] [nvarchar](3) NULL,
	[g_mc_level1_id] [nvarchar](20) NULL,
	[g_mc_level2_id] [nvarchar](20) NULL,
	[g_mc_level3_id] [nvarchar](20) NULL,
	[g_mc_level4_id] [nvarchar](20) NULL,
	[g_mc_level5_id] [nvarchar](20) NULL,
	[g_mc_level6_id] [nvarchar](20) NULL,
	[g_level] [int] NULL,
	[g_level_source_id] [int] NULL,
	[full_address] [nvarchar](500) NULL,
	[street_addr] [nvarchar](350) NULL,
	[municipality] [nvarchar](50) NULL,
	[postalcode] [nvarchar](15) NULL,
	[cresta] [nvarchar](50) NULL,
	[blg_num] [int] NULL,
	[blg_name] [nvarchar](50) NULL,
	[lob1] [nvarchar](50) NULL,
	[lob2] [nvarchar](50) NULL,
	[occ_short_desc] [nvarchar](50) NULL,
	[const_short_desc] [nvarchar](50) NULL,
	[m_air_occind] [nvarchar](3) NULL,
	[m_air_occ] [nvarchar](4) NULL,
	[m_air_constind] [nvarchar](3) NULL,
	[m_air_const] [nvarchar](3) NULL,
	[m_rms_occind] [nvarchar](7) NULL,
	[m_rms_occ] [nvarchar](5) NULL,
	[m_rms_constind] [nvarchar](7) NULL,
	[m_rms_const] [nvarchar](5) NULL,
	[num_stories] [int] NULL,
	[year_built] [int] NULL,
	[expire_date] [datetime2](7) NULL,
	[incept_date] [datetime2](7) NULL,
	[cov1val] [numeric](38, 8) NULL,
	[cov2val] [numeric](38, 8) NULL,
	[cov3val] [numeric](38, 8) NULL,
	[cov4val] [numeric](38, 8) NULL,
	[cov5val] [numeric](38, 8) NULL,
	[cov6val] [numeric](38, 8) NULL,
	[risk_count] [int] NULL,
	[shift_count] [int] NULL,
	[payroll] [numeric](38, 8) NULL,
	[empl_count] [numeric](38, 8) NULL,
	[calc_num_empl] [numeric](38, 8) NULL,
	[max_empl] [numeric](38, 8) NULL,
	[shift1] [numeric](38, 8) NULL,
	[shift2] [numeric](38, 8) NULL,
	[shift3] [numeric](38, 8) NULL,
	[shift4] [numeric](38, 8) NULL,
	[deduct_type] [nvarchar](6) NULL,
	[limit_type] [nvarchar](6) NULL,
	[premium] [numeric](38, 8) NULL,
	[site_limit] [numeric](38, 8) NULL,
	[site_bl_limit] [numeric](38, 8) NULL,
	[site_deduct] [numeric](38, 8) NULL,
	[site_bl_deduct] [numeric](38, 8) NULL,
	[cmb_deduct] [numeric](38, 8) NULL,
	[cmb_limit] [numeric](38, 8) NULL,
	[agg_limit] [numeric](38, 8) NULL,
	[cov1limit] [numeric](38, 8) NULL,
	[cov1deduct] [numeric](38, 8) NULL,
	[cov2limit] [numeric](38, 8) NULL,
	[cov2deduct] [numeric](38, 8) NULL,
	[cov3limit] [numeric](38, 8) NULL,
	[cov3deduct] [numeric](38, 8) NULL,
	[cov4limit] [numeric](38, 8) NULL,
	[cov4deduct] [numeric](38, 8) NULL,
	[cov4days] [numeric](38, 8) NULL,
	[cov5limit] [numeric](38, 8) NULL,
	[cov5deduct] [numeric](38, 8) NULL,
	[cov6limit] [numeric](38, 8) NULL,
	[cov6deduct] [numeric](38, 8) NULL,
	[rms_distance_coast] [numeric](38, 8) NULL,
	[s_udf_met1] [numeric](38, 8) NULL,
	[s_udf_met2] [numeric](38, 8) NULL,
	[s_udf_met3] [numeric](38, 8) NULL,
	[s_udf_met4] [numeric](38, 8) NULL,
	[s_udf_met5] [numeric](38, 8) NULL,
	[s_udf_met6] [numeric](38, 8) NULL,
	[s_udf_met7] [numeric](38, 8) NULL,
	[s_udf_met8] [numeric](38, 8) NULL,
	[s_udf_met9] [numeric](38, 8) NULL,
	[s_udf_met10] [numeric](38, 8) NULL,
	[s_udf_attr1] [nvarchar](40) NULL,
	[s_udf_attr2] [nvarchar](40) NULL,
	[s_udf_attr3] [nvarchar](40) NULL,
	[s_udf_attr4] [nvarchar](40) NULL,
	[s_udf_attr5] [nvarchar](40) NULL,
	[s_udf_attr6] [nvarchar](40) NULL,
	[s_udf_attr7] [nvarchar](40) NULL,
	[s_udf_attr8] [nvarchar](40) NULL,
	[s_udf_attr9] [nvarchar](40) NULL,
	[s_udf_attr10] [nvarchar](40) NULL,
	[site_comments] [nvarchar](300) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[site_exposure_wo_shape]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_exposure_wo_shape](
	[portfolio_id] [int] NULL,
	[peril_id] [int] NULL,
	[account_id] [nvarchar](20) NULL,
	[site_id] [nvarchar](20) NULL,
	[arcgis_id] [int] NULL,
	[nz_grid_id] [nvarchar](20) NULL,
	[sitenum] [nvarchar](20) NULL,
	[sitename] [nvarchar](50) NULL,
	[site_lat] [numeric](13, 9) NULL,
	[account_num] [nvarchar](40) NULL,
	[site_long] [numeric](13, 9) NULL,
	[country_id] [int] NULL,
	[currency] [nvarchar](3) NULL,
	[g_mc_level1_id] [nvarchar](20) NULL,
	[g_mc_level2_id] [nvarchar](20) NULL,
	[g_mc_level3_id] [nvarchar](20) NULL,
	[g_mc_level4_id] [nvarchar](20) NULL,
	[g_mc_level5_id] [nvarchar](20) NULL,
	[g_mc_level6_id] [nvarchar](20) NULL,
	[g_level] [int] NULL,
	[g_level_source_id] [int] NULL,
	[full_address] [nvarchar](500) NULL,
	[street_addr] [nvarchar](350) NULL,
	[municipality] [nvarchar](50) NULL,
	[postalcode] [nvarchar](15) NULL,
	[cresta] [nvarchar](50) NULL,
	[blg_num] [int] NULL,
	[blg_name] [nvarchar](50) NULL,
	[lob1] [nvarchar](50) NULL,
	[lob2] [nvarchar](50) NULL,
	[occ_short_desc] [nvarchar](50) NULL,
	[const_short_desc] [nvarchar](50) NULL,
	[m_air_occind] [nvarchar](3) NULL,
	[m_air_occ] [nvarchar](4) NULL,
	[m_air_constind] [nvarchar](3) NULL,
	[m_air_const] [nvarchar](3) NULL,
	[m_rms_occind] [nvarchar](7) NULL,
	[m_rms_occ] [nvarchar](5) NULL,
	[m_rms_constind] [nvarchar](7) NULL,
	[m_rms_const] [nvarchar](5) NULL,
	[num_stories] [int] NULL,
	[year_built] [int] NULL,
	[expire_date] [datetime] NULL,
	[incept_date] [datetime] NULL,
	[cov1val] [numeric](38, 8) NULL,
	[cov2val] [numeric](38, 8) NULL,
	[cov3val] [numeric](38, 8) NULL,
	[cov4val] [numeric](38, 8) NULL,
	[cov5val] [numeric](38, 8) NULL,
	[cov6val] [numeric](38, 8) NULL,
	[risk_count] [int] NULL,
	[shift_count] [int] NULL,
	[payroll] [numeric](38, 8) NULL,
	[empl_count] [numeric](38, 8) NULL,
	[calc_num_empl] [numeric](38, 8) NULL,
	[max_empl] [numeric](38, 8) NULL,
	[shift1] [numeric](38, 8) NULL,
	[shift2] [numeric](38, 8) NULL,
	[shift3] [numeric](38, 8) NULL,
	[shift4] [numeric](38, 8) NULL,
	[deduct_type] [nvarchar](6) NULL,
	[limit_type] [nvarchar](6) NULL,
	[premium] [numeric](38, 8) NULL,
	[site_limit] [numeric](38, 8) NULL,
	[site_bl_limit] [numeric](38, 8) NULL,
	[site_deduct] [numeric](38, 8) NULL,
	[site_bl_deduct] [numeric](38, 8) NULL,
	[cmb_deduct] [numeric](38, 8) NULL,
	[cmb_limit] [numeric](38, 8) NULL,
	[agg_limit] [numeric](38, 8) NULL,
	[cov1limit] [numeric](38, 8) NULL,
	[cov1deduct] [numeric](38, 8) NULL,
	[cov2limit] [numeric](38, 8) NULL,
	[cov2deduct] [numeric](38, 8) NULL,
	[cov3limit] [numeric](38, 8) NULL,
	[cov3deduct] [numeric](38, 8) NULL,
	[cov4limit] [numeric](38, 8) NULL,
	[cov4deduct] [numeric](38, 8) NULL,
	[cov4days] [numeric](38, 8) NULL,
	[cov5limit] [numeric](38, 8) NULL,
	[cov5deduct] [numeric](38, 8) NULL,
	[cov6limit] [numeric](38, 8) NULL,
	[cov6deduct] [numeric](38, 8) NULL,
	[rms_distance_coast] [numeric](38, 8) NULL,
	[s_udf_met1] [numeric](38, 8) NULL,
	[s_udf_met2] [numeric](38, 8) NULL,
	[s_udf_met3] [numeric](38, 8) NULL,
	[s_udf_met4] [numeric](38, 8) NULL,
	[s_udf_met5] [numeric](38, 8) NULL,
	[s_udf_met6] [numeric](38, 8) NULL,
	[s_udf_met7] [numeric](38, 8) NULL,
	[s_udf_met8] [numeric](38, 8) NULL,
	[s_udf_met9] [numeric](38, 8) NULL,
	[s_udf_met10] [numeric](38, 8) NULL,
	[s_udf_attr1] [nvarchar](40) NULL,
	[s_udf_attr2] [nvarchar](40) NULL,
	[s_udf_attr3] [nvarchar](40) NULL,
	[s_udf_attr4] [nvarchar](40) NULL,
	[s_udf_attr5] [nvarchar](40) NULL,
	[s_udf_attr6] [nvarchar](40) NULL,
	[s_udf_attr7] [nvarchar](40) NULL,
	[s_udf_attr8] [nvarchar](40) NULL,
	[s_udf_attr9] [nvarchar](40) NULL,
	[s_udf_attr10] [nvarchar](40) NULL,
	[site_comments] [nvarchar](300) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[site_hex_bin]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_hex_bin](
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[site_id] [bigint] NULL,
	[lod] [smallint] NULL,
	[row] [int] NULL,
	[col] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[site_hex_bin_comp]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_hex_bin_comp](
	[portfolio_id] [int] NULL,
	[account_id] [bigint] NULL,
	[site_id] [bigint] NULL,
	[lod] [smallint] NULL,
	[row] [int] NULL,
	[col] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[site_loss_analysis]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[site_loss_analysis](
	[portfolio_id] [int] NOT NULL,
	[analysis_id] [int] NOT NULL,
	[site_id] [bigint] NOT NULL,
	[account_id] [bigint] NOT NULL,
	[vendor_id] [int] NOT NULL,
	[model_id] [int] NOT NULL,
	[peril_id] [int] NOT NULL,
	[gross_loss] [float] NULL,
	[damage_loss] [float] NULL,
	[net_loss] [float] NULL,
	[occ_id] [varchar](25) NULL,
	[occ_ind] [varchar](10) NULL,
	[const_id] [varchar](25) NULL,
	[const_ind] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[spatial_ref_sys]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[spatial_ref_sys](
	[srid] [int] NOT NULL,
	[description] [varchar](512) NULL,
	[auth_name] [varchar](256) NULL,
	[auth_srid] [int] NULL,
	[falsex] [float] NOT NULL,
	[falsey] [float] NOT NULL,
	[xyunits] [float] NOT NULL,
	[falsez] [float] NOT NULL,
	[zunits] [float] NOT NULL,
	[falsem] [float] NOT NULL,
	[munits] [float] NOT NULL,
	[srtext] [varchar](2048) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sphelp]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sphelp](
	[dbschema] [nvarchar](256) NOT NULL,
	[spname] [nvarchar](256) NOT NULL,
	[arguments] [varchar](5000) NOT NULL,
	[lang_code] [varchar](3) NOT NULL,
	[region_code] [varchar](3) NULL,
	[seq] [smallint] NOT NULL,
	[helptext] [nvarchar](4000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sql_test]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sql_test](
	[c1] [bigint] NULL,
	[c2] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[step_timing]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[step_timing](
	[c1] [varchar](1000) NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[underwriting_analysis_client_ref]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[underwriting_analysis_client_ref](
	[lob_id] [int] NULL,
	[terms] [varchar](50) NULL,
	[demand_surge] [smallint] NULL,
	[client_ref_id] [varchar](100) NULL,
	[model_id] [smallint] NULL,
	[peril_id] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[underwriting_analysis_input]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[underwriting_analysis_input](
	[transaction_id] [varchar](32) NULL,
	[user_input] [varchar](8000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[underwriting_analysis_metric]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[underwriting_analysis_metric](
	[metric_id] [int] NOT NULL,
	[analysis_category_id] [int] NULL,
	[description] [varchar](256) NULL,
	[metric_name] [varchar](256) NULL,
	[metric_format_type_id] [int] NOT NULL,
	[sort_order] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[underwriting_analysis_result]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[underwriting_analysis_result](
	[transaction_id] [varchar](32) NULL,
	[underwriting_analysis_metric_id] [int] NULL,
	[result] [varchar](256) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[underwriting_analysis_saved]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[underwriting_analysis_saved](
	[id] [varchar](32) NOT NULL,
	[reference_id] [varchar](100) NOT NULL,
	[transaction_id] [varchar](32) NOT NULL,
	[address] [nvarchar](300) NOT NULL,
	[latitude] [numeric](12, 9) NULL,
	[longitude] [numeric](12, 9) NULL,
	[user_id] [varchar](32) NOT NULL,
	[portfolio_id] [int] NULL,
	[group_id] [varchar](50) NULL,
	[insert_ts] [datetime] NULL,
	[buffer_img_location] [varchar](200) NULL,
	[has_spatial_filter] [smallint] NULL,
	[active] [smallint] NULL,
	[comments] [varchar](300) NULL,
	[analysis_category_id] [int] NULL,
	[filter_trans_id] [varchar](36) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[underwriting_analysis_status]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[underwriting_analysis_status](
	[user_id] [varchar](32) NOT NULL,
	[transaction_id] [varchar](32) NOT NULL,
	[analysis_category_id] [int] NULL,
	[status] [int] NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL,
	[error_code] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[underwriting_hazard_analysis_result]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[underwriting_hazard_analysis_result](
	[transaction_id] [varchar](32) NULL,
	[result] [varchar](8000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_metric]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_metric](
	[user_id] [char](32) NOT NULL,
	[metric_id] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_preferences]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_preferences](
	[user_id] [varchar](32) NOT NULL,
	[region_id] [int] NULL,
	[full_name] [varchar](70) NULL,
	[last_group_selected] [varchar](50) NULL,
	[last_portfolio_selected] [int] NULL,
	[last_analysis_selected] [bigint] NULL,
	[comparison_portfolio] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[group_portfolio_view]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[group_portfolio_view]
 AS 
SELECT group_portfolio.portfolio_id, group_portfolio.group_id, lu_group.group_name, group_portfolio.status, group_portfolio.active, group_portfolio.pre_assigned, group_portfolio.created_by, group_portfolio.created_on, group_portfolio.modified_by, group_portfolio.modified_on FROM (group_portfolio JOIN lu_group ON ((group_portfolio.group_id = lu_group.group_id))) WHERE (((group_portfolio.active = 1) AND (group_portfolio.status = 1)) AND (lu_group.active = 1));

GO
/****** Object:  View [dbo].[vw_user_preferences]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_user_preferences]
 AS
SELECT a.user_id, a.region_id, a.full_name, a.last_group_selected AS default_group_id, gp.group_name AS default_group_name, a.last_portfolio_selected AS default_portfolio_id, dp.portfolio_name AS default_portfolio_name, dp.book_id AS default_book_id, dp.as_of_date, a.last_analysis_selected AS default_analysis_id, CASE WHEN (a.comparison_portfolio IS NOT NULL) THEN a.comparison_portfolio WHEN (a.last_portfolio_selected IS NOT NULL) THEN a.last_portfolio_selected ELSE NULL END AS comparison_portfolio_id, cp.portfolio_name AS comparison_portfolio_name
 FROM (((user_preferences a
 LEFT JOIN (SELECT portfolio.portfolio_id, portfolio.portfolio_name, portfolio.book_id, portfolio.as_of_date FROM portfolio) dp ON ((a.last_portfolio_selected = dp.portfolio_id))) LEFT JOIN (SELECT portfolio.portfolio_id, portfolio.portfolio_name, portfolio.book_id FROM portfolio) cp ON ((a.comparison_portfolio = cp.portfolio_id)))
  LEFT JOIN (SELECT group_portfolio_view.portfolio_id, group_portfolio_view.group_id, group_portfolio_view.group_name FROM group_portfolio_view) gp ON (((a.last_portfolio_selected = gp.portfolio_id) AND (a.last_group_selected = gp.group_id))));

GO
/****** Object:  View [dbo].[group_portfolios]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[group_portfolios]
(
     portfolio_id,
     group_id,
     status,
     active,
     pre_assigned,
     created_by,
     created_on,
     modified_by,
     modified_on
) AS
SELECT group_portfolio.portfolio_id, group_portfolio.group_id, group_portfolio.status, group_portfolio.active, group_portfolio.pre_assigned, group_portfolio.created_by, group_portfolio.created_on, group_portfolio.modified_by, group_portfolio.modified_on FROM group_portfolio;

GO
/****** Object:  View [dbo].[lu_construction_air_view]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[lu_construction_air_view]
 AS
SELECT lu_construction.const_id AS m_air_const, lu_construction.const_ind AS m_air_constind, lu_construction.const_short_desc, lu_construction.const_desc, lu_construction.vendor_id FROM lu_construction WHERE (lu_construction.vendor_id IN (1));

GO
/****** Object:  View [dbo].[lu_construction_rms_view]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[lu_construction_rms_view]
 AS
SELECT lu_construction.const_id AS m_rms_const, lu_construction.const_ind AS m_rms_constind, lu_construction.const_short_desc, lu_construction.const_desc, lu_construction.vendor_id FROM lu_construction WHERE (lu_construction.vendor_id IN (3));

GO
/****** Object:  View [dbo].[lu_occupancy_air_view]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[lu_occupancy_air_view]
 AS
SELECT lu_occupancy.occ_id AS m_air_occ, lu_occupancy.occ_ind AS m_air_occind, lu_occupancy.occ_short_desc, lu_occupancy.occ_desc, lu_occupancy.vendor_id FROM lu_occupancy WHERE (lu_occupancy.vendor_id IN (1));

GO
/****** Object:  View [dbo].[lu_occupancy_rms_view]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[lu_occupancy_rms_view]
 AS
SELECT lu_occupancy.occ_id AS m_rms_occ, lu_occupancy.occ_ind AS m_rms_occind, lu_occupancy.occ_short_desc, lu_occupancy.occ_desc, lu_occupancy.vendor_id FROM lu_occupancy WHERE (lu_occupancy.vendor_id IN (3));

GO
/****** Object:  View [dbo].[vw_deterministic_results]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE
    VIEW [dbo].[vw_deterministic_results] AS
SELECT p.portfolio_id,
     p.peril_id,
     sl.vendor_id,
     sl.model_id,
     s.account_id,
     s.site_id,
     s.arcgis_id,
     s.nz_grid_id,
     s.account_num,
     s.sitenum,
     s.sitename,
     s.site_lat,
     s.site_long,
     s.shape,
     s.country_id,
     c.country_name,
     c.iso2,
     c.iso3,
     s.currency,
     s.g_mc_level1_id,
     s.g_mc_level2_id,
     s.g_mc_level3_id,
     s.g_mc_level4_id,
     s.g_mc_level5_id,
     s.g_mc_level6_id,
     s.g_level,
     g."description" AS g_level_desc,
     s.full_address,
     s.street_addr,
     s.municipality,
     s.postalcode,
     s.cresta,
     s.blg_num,
     s.blg_name,
     s.lob1,
     s.lob2,
     s.occ_short_desc,
     s.const_short_desc,
     s.num_stories,
     s.year_built,
     s.expire_date,
     s.incept_date,
     (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv,
     s.cov1val,
     s.cov2val,
     s.cov3val,
     s.cov4val,
     s.cov5val,
     s.cov6val,
     1 AS site_count,
     s.risk_count,
     s.shift_count,
     s.payroll,
     s.empl_count,
     s.calc_num_empl,
     s.max_empl,
     s.shift1,
     s.shift2,
     s.shift3,
     s.shift4,
     s.deduct_type,
     s.limit_type,
     s.premium,
     s.site_limit,
     s.site_bl_limit,
     s.site_deduct,
     s.site_bl_deduct,
     s.cmb_deduct,
     s.cmb_limit,
     s.agg_limit,
     s.cov1limit,
     s.cov1deduct,
     s.cov2limit,
     s.cov2deduct,
     s.cov3limit,
     s.cov3deduct,
     s.cov4limit,
     s.cov4deduct,
     s.cov4days,
     s.cov5limit,
     s.cov5deduct,
     s.cov6limit,
     s.cov6deduct,
     sl.gross_loss,
     sl.damage_loss,
     sl.net_loss,
     s.s_udf_met1,
     s.s_udf_met2,
     s.s_udf_met3,
     s.s_udf_met4,
     s.s_udf_met5,
     s.s_udf_met6,
     s.s_udf_met7,
     s.s_udf_met8,
     s.s_udf_met9,
     s.s_udf_met10,
     s.s_udf_attr1,
     s.s_udf_attr2,
     s.s_udf_attr3,
     s.s_udf_attr4,
     s.s_udf_attr5,
     s.s_udf_attr6,
     s.s_udf_attr7,
     s.s_udf_attr8,
     s.s_udf_attr9,
     s.s_udf_attr10,
     pe.policy_id,
     pe.policy_status,
     pe.pol_lob,
     pe.policy_name,
     pe.policy_num,
     pe.incept_date AS policy_incept_date,
     pe.expire_date AS policy_expire_date,
     pe.policy_limit,
     pe.policy_deduct,
     pe.policy_bl_deduct,
     pe.min_deduct,
     pe.max_deduct,
     pe.policy_bl_grosslimit,
     pe.cov1_limit,
     pe.cov1_deduct,
     pe.cov2_limit,
     pe.cov2_deduct,
     pe.cov3_limit,
     pe.cov3_deduct,
     pe.cov4_limit,
     pe.cov4_deduct,
     pe.cov5_limit,
     pe.cov5_deduct,
     pe.cov6_limit,
     pe.cov6_deduct,
     pe.agg_deduct,
     pe.cmb_limit AS policy_cmb_limit,
     pe.cmbinded_deduct,
     pe.sub_limit,
     pe.sub_deduct,
     pl.gross_loss AS policy_gross_loss,
     pl.damage_loss AS policy_damage_loss,
     pl.net_loss AS policy_net_loss,
     pe.p_udf_met1,
     pe.p_udf_met2,
     pe.p_udf_met3,
     pe.p_udf_met4,
     pe.p_udf_met5,
     pe.p_udf_met6,
     pe.p_udf_met7,
     pe.p_udf_met8,
     pe.p_udf_met9,
     pe.p_udf_met10,
     pe.p_udf_met11,
     pe.p_udf_met12,
     pe.p_udf_met13,
     pe.p_udf_met14,
     pe.p_udf_met15,
     pe.p_udf_attr1,
     pe.p_udf_attr2,
     pe.p_udf_attr3,
     pe.p_udf_attr4,
     pe.p_udf_attr5,
     pe.p_udf_attr6,
     pe.p_udf_attr7,
     pe.p_udf_attr8,
     pe.p_udf_attr9,
     pe.p_udf_attr10,
     pe.p_udf_attr11,
     pe.p_udf_attr12,
     pe.p_udf_attr13,
     pe.p_udf_attr14,
     pe.p_udf_attr15,
  CASE WHEN sl.gross_loss is NOT NULL
    AND sl.gross_loss > 0
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val is  NOT NULL
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val > 0
        THEN sl.gross_loss / (s.cov1val + s.cov2val + s.cov3val + s.cov4val)
        ELSE 0
END AS drvmet1,
      CASE WHEN sl.damage_loss is NOT NULL
    AND sl.gross_loss > 0
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val is  NOT NULL
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val > 0
        THEN sl.gross_loss / (s.cov1val + s.cov2val + s.cov3val + s.cov4val)
        ELSE 0
END AS drvmet2,
     CASE WHEN sl.gross_loss is NOT NULL
    AND sl.gross_loss > 0 AND s.site_limit is NOT NULL
    AND s.site_limit > 0 THEN sl.gross_loss / s.site_limit ELSE 0 END AS drvmet3,
    CASE WHEN sl.gross_loss is NOT NULL  AND sl.gross_loss > 0 AND s.premium is NOT NULL
    AND s.premium > 0 THEN sl.gross_loss / s.premium ELSE 0
END AS drvmet4,
     CASE WHEN sl.damage_loss is NOT NULL
    AND sl.damage_loss > 0
    AND s.premium is NOT NULL
    AND s.premium > 0 THEN sl.damage_loss / s.premium ELSE 0
END AS drvmet5,
     tr.scenario_category,
     tr.category_id,
     tr.scenario_id,
     tr.analysis_id,
     tr.shift_id,
     tr.gis_id
FROM ((((((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((p.portfolio_id = s.portfolio_id)
    AND (p.peril_id = s.peril_id)))) JOIN policy_exposure pe ON (((s.portfolio_id = pe.portfolio_id)
    AND (s.account_id = pe.account_id)))) LEFT JOIN site_loss_analysis sl ON ((((sl.analysis_id = pa.analysis_id)
    AND (s.account_id = sl.account_id))
    AND (s.site_id = sl.site_id)))) LEFT JOIN policy_loss_analysis pl ON ((((pl.analysis_id = pa.analysis_id)
    AND (pe.account_id = pl.account_id))
    AND (pe.policy_id = pl.policy_id)))) JOIN deterministic_results tr ON ((((((tr.portfolio_id = s.portfolio_id)
    AND (tr.account_id = s.account_id))
    AND (tr.site_id = s.site_id))
    AND (tr.portfolio_id = pe.portfolio_id))
    AND (tr.account_id = pe.account_id)))) JOIN lu_country c ON ((s.country_id = c.g_country_id))) LEFT JOIN lu_geocode_level g ON ((s.g_level = g.g_level)));

GO
/****** Object:  View [dbo].[vw_map_site]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_map_site]
 AS
SELECT p.portfolio_id, p.peril_id, sl.vendor_id, sl.model_id, s.account_id, s.site_id, s.arcgis_id, s.nz_grid_id, s.account_num, s.sitenum, s.sitename, s.site_lat, s.site_long, s.shape, s.country_id, c.country_name, c.iso2, c.iso3, s.currency, s.g_mc_level1_id, s.g_mc_level2_id, s.g_mc_level3_id, s.g_mc_level4_id, s.g_mc_level5_id, s.g_mc_level6_id, s.g_level, g."description" AS g_level_desc, s.full_address, s.street_addr, s.municipality, s.postalcode, s.cresta, s.blg_num, s.blg_name, s.lob1, s.lob2, s.occ_short_desc, s.const_short_desc, s.num_stories, s.year_built, s.expire_date, s.incept_date, (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv, s.cov1val, s.cov2val, s.cov3val, s.cov4val, s.cov5val, s.cov6val, 1 AS site_count, s.risk_count, s.shift_count, s.payroll, s.empl_count, s.calc_num_empl, s.max_empl, s.shift1, s.shift2, s.shift3, s.shift4, s.deduct_type, s.limit_type, s.premium, s.site_limit, s.site_bl_limit, s.site_deduct, s.site_bl_deduct, s.cmb_deduct, s.cmb_limit, s.agg_limit, s.cov1limit, s.cov1deduct, s.cov2limit, s.cov2deduct, s.cov3limit, s.cov3deduct, s.cov4limit, s.cov4deduct, s.cov4days, s.cov5limit, s.cov5deduct, s.cov6limit, s.cov6deduct, sl.gross_loss, sl.damage_loss, sl.net_loss FROM (((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((p.portfolio_id = s.portfolio_id) AND (p.peril_id = s.peril_id)))) LEFT JOIN site_loss_analysis sl ON ((((sl.analysis_id = pa.analysis_id) AND (s.account_id = sl.account_id)) AND (s.site_id = sl.site_id)))) JOIN lu_country c ON ((s.country_id = c.g_country_id))) LEFT JOIN lu_geocode_level g ON ((s.g_level = g.g_level)));

GO
/****** Object:  View [dbo].[vw_map_site_hex_bin]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_map_site_hex_bin]
 AS
SELECT p.portfolio_id, s.country_id, s.g_mc_level1_id, s.g_mc_level2_id, s.g_mc_level3_id, s.g_mc_level4_id, s.g_mc_level5_id, s.g_mc_level6_id, s.arcgis_id, s.site_id, s.sitenum, s.shape, s.lob1, s.occ_short_desc, s.const_short_desc, s.num_stories, s.year_built, s.g_level, g."description" AS g_level_desc, (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv, s.cov1val, s.cov2val, s.cov3val, s.cov4val, s.cov5val, s.cov6val, 1 AS site_count, s.risk_count, s.shift_count, s.payroll, s.empl_count, s.calc_num_empl, s.max_empl, s.shift1, s.shift2, s.shift3, s.shift4, s.deduct_type, s.limit_type, s.premium, s.site_limit, s.site_bl_limit, s.site_deduct, s.site_bl_deduct, s.cmb_deduct, s.cmb_limit, s.agg_limit, s.cov1limit, s.cov1deduct, s.cov2limit, s.cov2deduct, s.cov3limit, s.cov3deduct, s.cov4limit, s.cov4deduct, s.cov4days, s.cov5limit, s.cov5deduct, s.cov6limit, s.cov6deduct, sl.gross_loss, sl.damage_loss, sl.net_loss, s.s_udf_met1, s.s_udf_met2, s.s_udf_met3, s.s_udf_met4, s.s_udf_met5, s.s_udf_met6, s.s_udf_met7, s.s_udf_met8, s.s_udf_met9, s.s_udf_met10, s.s_udf_attr1, s.s_udf_attr2, s.s_udf_attr3, s.s_udf_attr4, s.s_udf_attr5, s.s_udf_attr6, s.s_udf_attr7, s.s_udf_attr8, s.s_udf_attr9, s.s_udf_attr10, pe.policy_id, pe.policy_status, pe.pol_lob, pe.policy_name, pe.policy_num, pe.incept_date, pe.expire_date, pe.policy_limit, pe.policy_deduct, pe.premium AS policy_premium, pe.policy_bl_deduct, pe.min_deduct, pe.max_deduct, pe.policy_bl_grosslimit, pe.cov1_limit, pe.cov1_deduct, pe.cov2_limit, pe.cov2_deduct, pe.cov3_limit, pe.cov3_deduct, pe.cov4_limit, pe.cov4_deduct, pe.cov5_limit, pe.cov5_deduct, pe.cov6_limit, pe.cov6_deduct, pe.agg_deduct, pe.cmb_limit AS policy_cmb_limit, pe.cmbinded_deduct, pe.sub_limit, pe.sub_deduct, pl.gross_loss AS policy_gross_loss, pl.damage_loss AS policy_damage_loss, pl.net_loss AS policy_net_loss, pe.p_udf_met1, pe.p_udf_met2, pe.p_udf_met3, pe.p_udf_met4, pe.p_udf_met5, pe.p_udf_met6, pe.p_udf_met7, pe.p_udf_met8, pe.p_udf_met9, pe.p_udf_met10, pe.p_udf_met11, pe.p_udf_met12, pe.p_udf_met13, pe.p_udf_met14, pe.p_udf_met15, pe.p_udf_attr1, pe.p_udf_attr2, pe.p_udf_attr3, pe.p_udf_attr4, pe.p_udf_attr5, pe.p_udf_attr6, pe.p_udf_attr7, pe.p_udf_attr8, pe.p_udf_attr9, pe.p_udf_attr10, pe.p_udf_attr11, pe.p_udf_attr12, pe.p_udf_attr13, pe.p_udf_attr14, pe.p_udf_attr15, sh.lod, sh."row", sh.col, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.gross_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet1, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.damage_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet2, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.site_limit IS NOT NULL)) AND (s.site_limit > 0)) THEN (sl.gross_loss / s.site_limit) ELSE 0 END AS drvmet3, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.gross_loss / s.premium) ELSE 0 END AS drvmet4, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.damage_loss / s.premium) ELSE 0 END AS drvmet5 FROM (((((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((s.portfolio_id = p.portfolio_id) AND (s.peril_id = p.peril_id)))) JOIN policy_exposure pe ON (((s.account_id = pe.account_id) AND (s.portfolio_id = pe.portfolio_id)))) JOIN site_hex_bin sh ON ((((p.portfolio_id = sh.portfolio_id) AND (s.site_id = sh.site_id)) AND (s.account_id = sh.account_id)))) LEFT JOIN site_loss_analysis sl ON ((((sl.analysis_id = pa.analysis_id) AND (s.account_id = sl.account_id)) AND (s.site_id = sl.site_id)))) LEFT JOIN policy_loss_analysis pl ON ((((pl.analysis_id = pa.analysis_id) AND (pe.account_id = pl.account_id)) AND (pe.policy_id = pl.policy_id)))) LEFT JOIN lu_geocode_level g ON ((s.g_level_source_id = g.g_level)));

GO
/****** Object:  View [dbo].[vw_map_site_maplevel1]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_map_site_maplevel1]
 AS
SELECT p.portfolio_id, s.g_mc_level1_id, s.g_mc_level2_id, s.g_mc_level3_id, s.g_mc_level4_id, s.g_mc_level5_id, s.g_mc_level6_id, s.arcgis_id, s.country_id, s.shape, s.lob1, s.occ_short_desc, s.const_short_desc, s.num_stories, s.year_built, s.g_level, g."description" AS g_level_desc, (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv, s.cov1val, s.cov2val, s.cov3val, s.cov4val, s.cov5val, s.cov6val, 1 AS site_count, s.risk_count, s.shift_count, s.payroll, s.empl_count, s.calc_num_empl, s.max_empl, s.shift1, s.shift2, s.shift3, s.shift4, s.deduct_type, s.limit_type, s.premium, s.site_limit, s.site_bl_limit, s.site_deduct, s.site_bl_deduct, s.cmb_deduct, s.cmb_limit, s.agg_limit, s.cov1limit, s.cov1deduct, s.cov2limit, s.cov2deduct, s.cov3limit, s.cov3deduct, s.cov4limit, s.cov4deduct, s.cov4days, s.cov5limit, s.cov5deduct, s.cov6limit, s.cov6deduct, sl.gross_loss, sl.damage_loss, sl.net_loss, ml.mc_level1_display, ml.mc_level1_code, ml.mc_level1_type, s.s_udf_met1, s.s_udf_met2, s.s_udf_met3, s.s_udf_met4, s.s_udf_met5, s.s_udf_met6, s.s_udf_met7, s.s_udf_met8, s.s_udf_met9, s.s_udf_met10, s.s_udf_attr1, s.s_udf_attr2, s.s_udf_attr3, s.s_udf_attr4, s.s_udf_attr5, s.s_udf_attr6, s.s_udf_attr7, s.s_udf_attr8, s.s_udf_attr9, s.s_udf_attr10, pe.policy_id, pe.policy_status, pe.pol_lob, pe.policy_name, pe.policy_num, pe.incept_date, pe.expire_date, pe.policy_limit, pe.policy_deduct, pe.premium AS policy_premium, pe.policy_bl_deduct, pe.min_deduct, pe.max_deduct, pe.policy_bl_grosslimit, pe.cov1_limit, pe.cov1_deduct, pe.cov2_limit, pe.cov2_deduct, pe.cov3_limit, pe.cov3_deduct, pe.cov4_limit, pe.cov4_deduct, pe.cov5_limit, pe.cov5_deduct, pe.cov6_limit, pe.cov6_deduct, pe.agg_deduct, pe.cmb_limit AS policy_cmb_limit, pe.cmbinded_deduct, pe.sub_limit, pe.sub_deduct, pl.gross_loss AS policy_gross_loss, pl.damage_loss AS policy_damage_loss, pl.net_loss AS policy_net_loss, pe.p_udf_met1, pe.p_udf_met2, pe.p_udf_met3, pe.p_udf_met4, pe.p_udf_met5, pe.p_udf_met6, pe.p_udf_met7, pe.p_udf_met8, pe.p_udf_met9, pe.p_udf_met10, pe.p_udf_met11, pe.p_udf_met12, pe.p_udf_met13, pe.p_udf_met14, pe.p_udf_met15, pe.p_udf_attr1, pe.p_udf_attr2, pe.p_udf_attr3, pe.p_udf_attr4, pe.p_udf_attr5, pe.p_udf_attr6, pe.p_udf_attr7, pe.p_udf_attr8, pe.p_udf_attr9, pe.p_udf_attr10, pe.p_udf_attr11, pe.p_udf_attr12, pe.p_udf_attr13, pe.p_udf_attr14, pe.p_udf_attr15, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.gross_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet1, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.damage_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet2, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.site_limit IS NOT NULL)) AND (s.site_limit > 0)) THEN (sl.gross_loss / s.site_limit) ELSE 0 END AS drvmet3, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.gross_loss / s.premium) ELSE 0 END AS drvmet4, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.damage_loss / s.premium) ELSE 0 END AS drvmet5 FROM (((((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((p.portfolio_id = s.portfolio_id) AND (p.peril_id = s.peril_id)))) JOIN policy_exposure pe ON (((s.portfolio_id = pe.portfolio_id) AND (s.account_id = pe.account_id)))) LEFT JOIN site_loss_analysis sl ON ((((sl.analysis_id = pa.analysis_id) AND (s.account_id = sl.account_id)) AND (s.site_id = sl.site_id)))) LEFT JOIN policy_loss_analysis pl ON ((((pl.analysis_id = pa.analysis_id) AND (pe.account_id = pl.account_id)) AND (pe.policy_id = pl.policy_id)))) LEFT JOIN lu_geocode_level g ON ((s.g_level_source_id = g.g_level))) JOIN lu_mc_maplevel1 ml ON ((s.g_mc_level1_id = ml.g_mc_level1_id)));

GO
/****** Object:  View [dbo].[vw_map_site_maplevel2]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_map_site_maplevel2]
 AS
SELECT p.portfolio_id, s.g_mc_level1_id, s.g_mc_level2_id, s.g_mc_level3_id, s.g_mc_level4_id, s.g_mc_level5_id, s.g_mc_level6_id, s.arcgis_id, s.country_id, s.shape, s.lob1, s.occ_short_desc, s.const_short_desc, s.num_stories, s.year_built, s.g_level, g."description" AS g_level_desc, (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv, s.cov1val, s.cov2val, s.cov3val, s.cov4val, s.cov5val, s.cov6val, 1 AS site_count, s.risk_count, s.shift_count, s.payroll, s.empl_count, s.calc_num_empl, s.max_empl, s.shift1, s.shift2, s.shift3, s.shift4, s.deduct_type, s.limit_type, s.premium, s.site_limit, s.site_bl_limit, s.site_deduct, s.site_bl_deduct, s.cmb_deduct, s.cmb_limit, s.agg_limit, s.cov1limit, s.cov1deduct, s.cov2limit, s.cov2deduct, s.cov3limit, s.cov3deduct, s.cov4limit, s.cov4deduct, s.cov4days, s.cov5limit, s.cov5deduct, s.cov6limit, s.cov6deduct, sl.gross_loss, sl.damage_loss, sl.net_loss, ml.mc_level2_display, ml.mc_level2_code, ml.mc_level2_type, s.s_udf_met1, s.s_udf_met2, s.s_udf_met3, s.s_udf_met4, s.s_udf_met5, s.s_udf_met6, s.s_udf_met7, s.s_udf_met8, s.s_udf_met9, s.s_udf_met10, s.s_udf_attr1, s.s_udf_attr2, s.s_udf_attr3, s.s_udf_attr4, s.s_udf_attr5, s.s_udf_attr6, s.s_udf_attr7, s.s_udf_attr8, s.s_udf_attr9, s.s_udf_attr10, pe.policy_id, pe.policy_status, pe.pol_lob, pe.policy_name, pe.policy_num, pe.incept_date, pe.expire_date, pe.policy_limit, pe.policy_deduct, pe.policy_bl_deduct, pe.premium AS policy_premium, pe.min_deduct, pe.max_deduct, pe.policy_bl_grosslimit, pe.cov1_limit, pe.cov1_deduct, pe.cov2_limit, pe.cov2_deduct, pe.cov3_limit, pe.cov3_deduct, pe.cov4_limit, pe.cov4_deduct, pe.cov5_limit, pe.cov5_deduct, pe.cov6_limit, pe.cov6_deduct, pe.agg_deduct, pe.cmb_limit AS policy_cmb_limit, pe.cmbinded_deduct, pe.sub_limit, pe.sub_deduct, pl.gross_loss AS policy_gross_loss, pl.damage_loss AS policy_damage_loss, pl.net_loss AS policy_net_loss, pe.p_udf_met1, pe.p_udf_met2, pe.p_udf_met3, pe.p_udf_met4, pe.p_udf_met5, pe.p_udf_met6, pe.p_udf_met7, pe.p_udf_met8, pe.p_udf_met9, pe.p_udf_met10, pe.p_udf_met11, pe.p_udf_met12, pe.p_udf_met13, pe.p_udf_met14, pe.p_udf_met15, pe.p_udf_attr1, pe.p_udf_attr2, pe.p_udf_attr3, pe.p_udf_attr4, pe.p_udf_attr5, pe.p_udf_attr6, pe.p_udf_attr7, pe.p_udf_attr8, pe.p_udf_attr9, pe.p_udf_attr10, pe.p_udf_attr11, pe.p_udf_attr12, pe.p_udf_attr13, pe.p_udf_attr14, pe.p_udf_attr15, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.gross_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet1, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.damage_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet2, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.site_limit IS NOT NULL)) AND (s.site_limit > 0)) THEN (sl.gross_loss / s.site_limit) ELSE 0 END AS drvmet3, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.gross_loss / s.premium) ELSE 0 END AS drvmet4, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.damage_loss / s.premium) ELSE 0 END AS drvmet5 FROM (((((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((p.portfolio_id = s.portfolio_id) AND (p.peril_id = s.peril_id)))) JOIN policy_exposure pe ON (((s.portfolio_id = pe.portfolio_id) AND (s.account_id = pe.account_id)))) LEFT JOIN site_loss_analysis sl ON ((((sl.analysis_id = pa.analysis_id) AND (s.account_id = sl.account_id)) AND (s.site_id = sl.site_id)))) LEFT JOIN policy_loss_analysis pl ON ((((pl.analysis_id = pa.analysis_id) AND (pe.account_id = pl.account_id)) AND (pe.policy_id = pl.policy_id)))) LEFT JOIN lu_geocode_level g ON ((s.g_level_source_id = g.g_level))) JOIN lu_mc_maplevel2 ml ON ((s.g_mc_level2_id = ml.g_mc_level2_id)));

GO
/****** Object:  View [dbo].[vw_map_site_maplevel3]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_map_site_maplevel3]
 AS
SELECT p.portfolio_id, s.g_mc_level1_id, s.g_mc_level2_id, s.g_mc_level3_id, s.g_mc_level4_id, s.g_mc_level5_id, s.g_mc_level6_id, s.arcgis_id, s.country_id, s.shape, s.lob1, s.occ_short_desc, s.const_short_desc, s.num_stories, s.year_built, s.g_level, g."description" AS g_level_desc, (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv, s.cov1val, s.cov2val, s.cov3val, s.cov4val, s.cov5val, s.cov6val, 1 AS site_count, s.risk_count, s.shift_count, s.payroll, s.empl_count, s.calc_num_empl, s.max_empl, s.shift1, s.shift2, s.shift3, s.shift4, s.deduct_type, s.limit_type, s.premium, s.site_limit, s.site_bl_limit, s.site_deduct, s.site_bl_deduct, s.cmb_deduct, s.cmb_limit, s.agg_limit, s.cov1limit, s.cov1deduct, s.cov2limit, s.cov2deduct, s.cov3limit, s.cov3deduct, s.cov4limit, s.cov4deduct, s.cov4days, s.cov5limit, s.cov5deduct, s.cov6limit, s.cov6deduct, sl.gross_loss, sl.damage_loss, sl.net_loss, ml.mc_level3_display, ml.mc_level3_code, ml.mc_level3_type, s.s_udf_met1, s.s_udf_met2, s.s_udf_met3, s.s_udf_met4, s.s_udf_met5, s.s_udf_met6, s.s_udf_met7, s.s_udf_met8, s.s_udf_met9, s.s_udf_met10, s.s_udf_attr1, s.s_udf_attr2, s.s_udf_attr3, s.s_udf_attr4, s.s_udf_attr5, s.s_udf_attr6, s.s_udf_attr7, s.s_udf_attr8, s.s_udf_attr9, s.s_udf_attr10, pe.policy_id, pe.policy_status, pe.pol_lob, pe.policy_name, pe.policy_num, pe.incept_date, pe.expire_date, pe.policy_limit, pe.policy_deduct, pe.premium AS policy_premium, pe.policy_bl_deduct, pe.min_deduct, pe.max_deduct, pe.policy_bl_grosslimit, pe.cov1_limit, pe.cov1_deduct, pe.cov2_limit, pe.cov2_deduct, pe.cov3_limit, pe.cov3_deduct, pe.cov4_limit, pe.cov4_deduct, pe.cov5_limit, pe.cov5_deduct, pe.cov6_limit, pe.cov6_deduct, pe.agg_deduct, pe.cmb_limit AS policy_cmb_limit, pe.cmbinded_deduct, pe.sub_limit, pe.sub_deduct, pl.gross_loss AS policy_gross_loss, pl.damage_loss AS policy_damage_loss, pl.net_loss AS policy_net_loss, pe.p_udf_met1, pe.p_udf_met2, pe.p_udf_met3, pe.p_udf_met4, pe.p_udf_met5, pe.p_udf_met6, pe.p_udf_met7, pe.p_udf_met8, pe.p_udf_met9, pe.p_udf_met10, pe.p_udf_met11, pe.p_udf_met12, pe.p_udf_met13, pe.p_udf_met14, pe.p_udf_met15, pe.p_udf_attr1, pe.p_udf_attr2, pe.p_udf_attr3, pe.p_udf_attr4, pe.p_udf_attr5, pe.p_udf_attr6, pe.p_udf_attr7, pe.p_udf_attr8, pe.p_udf_attr9, pe.p_udf_attr10, pe.p_udf_attr11, pe.p_udf_attr12, pe.p_udf_attr13, pe.p_udf_attr14, pe.p_udf_attr15, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.gross_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet1, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.damage_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet2, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.site_limit IS NOT NULL)) AND (s.site_limit > 0)) THEN (sl.gross_loss / s.site_limit) ELSE 0 END AS drvmet3, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.gross_loss / s.premium) ELSE 0 END AS drvmet4, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.damage_loss / s.premium) ELSE 0 END AS drvmet5 FROM (((((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((p.portfolio_id = s.portfolio_id) AND (p.peril_id = s.peril_id)))) JOIN policy_exposure pe ON (((s.portfolio_id = pe.portfolio_id) AND (s.account_id = pe.account_id)))) LEFT JOIN site_loss_analysis sl ON ((((sl.analysis_id = pa.analysis_id) AND (s.account_id = sl.account_id)) AND (s.site_id = sl.site_id)))) LEFT JOIN policy_loss_analysis pl ON ((((pl.analysis_id = pa.analysis_id) AND (pe.account_id = pl.account_id)) AND (pe.policy_id = pl.policy_id)))) LEFT JOIN lu_geocode_level g ON ((s.g_level_source_id = g.g_level))) JOIN lu_mc_maplevel3 ml ON ((s.g_mc_level3_id = ml.g_mc_level3_id)));

GO
/****** Object:  View [dbo].[vw_map_site_maplevel4]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_map_site_maplevel4]
 AS
SELECT p.portfolio_id, s.g_mc_level1_id, s.g_mc_level2_id, s.g_mc_level3_id, s.g_mc_level4_id, s.g_mc_level5_id, s.g_mc_level6_id, s.arcgis_id, s.country_id, s.shape, s.lob1, s.occ_short_desc, s.const_short_desc, s.num_stories, s.year_built, s.g_level, g."description" AS g_level_desc, (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv, s.cov1val, s.cov2val, s.cov3val, s.cov4val, s.cov5val, s.cov6val, 1 AS site_count, s.risk_count, s.shift_count, s.payroll, s.empl_count, s.calc_num_empl, s.max_empl, s.shift1, s.shift2, s.shift3, s.shift4, s.deduct_type, s.limit_type, s.premium, s.site_limit, s.site_bl_limit, s.site_deduct, s.site_bl_deduct, s.cmb_deduct, s.cmb_limit, s.agg_limit, s.cov1limit, s.cov1deduct, s.cov2limit, s.cov2deduct, s.cov3limit, s.cov3deduct, s.cov4limit, s.cov4deduct, s.cov4days, s.cov5limit, s.cov5deduct, s.cov6limit, s.cov6deduct, sl.gross_loss, sl.damage_loss, sl.net_loss, ml.mc_level4_display, ml.mc_level4_code, ml.mc_level4_type, s.s_udf_met1, s.s_udf_met2, s.s_udf_met3, s.s_udf_met4, s.s_udf_met5, s.s_udf_met6, s.s_udf_met7, s.s_udf_met8, s.s_udf_met9, s.s_udf_met10, s.s_udf_attr1, s.s_udf_attr2, s.s_udf_attr3, s.s_udf_attr4, s.s_udf_attr5, s.s_udf_attr6, s.s_udf_attr7, s.s_udf_attr8, s.s_udf_attr9, s.s_udf_attr10, pe.policy_id, pe.policy_status, pe.pol_lob, pe.policy_name, pe.policy_num, pe.incept_date, pe.expire_date, pe.policy_limit, pe.policy_deduct, pe.premium AS policy_premium, pe.policy_bl_deduct, pe.min_deduct, pe.max_deduct, pe.policy_bl_grosslimit, pe.cov1_limit, pe.cov1_deduct, pe.cov2_limit, pe.cov2_deduct, pe.cov3_limit, pe.cov3_deduct, pe.cov4_limit, pe.cov4_deduct, pe.cov5_limit, pe.cov5_deduct, pe.cov6_limit, pe.cov6_deduct, pe.agg_deduct, pe.cmb_limit AS policy_cmb_limit, pe.cmbinded_deduct, pe.sub_limit, pe.sub_deduct, pl.gross_loss AS policy_gross_loss, pl.damage_loss AS policy_damage_loss, pl.net_loss AS policy_net_loss, pe.p_udf_met1, pe.p_udf_met2, pe.p_udf_met3, pe.p_udf_met4, pe.p_udf_met5, pe.p_udf_met6, pe.p_udf_met7, pe.p_udf_met8, pe.p_udf_met9, pe.p_udf_met10, pe.p_udf_met11, pe.p_udf_met12, pe.p_udf_met13, pe.p_udf_met14, pe.p_udf_met15, pe.p_udf_attr1, pe.p_udf_attr2, pe.p_udf_attr3, pe.p_udf_attr4, pe.p_udf_attr5, pe.p_udf_attr6, pe.p_udf_attr7, pe.p_udf_attr8, pe.p_udf_attr9, pe.p_udf_attr10, pe.p_udf_attr11, pe.p_udf_attr12, pe.p_udf_attr13, pe.p_udf_attr14, pe.p_udf_attr15, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.gross_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet1, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.damage_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet2, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.site_limit IS NOT NULL)) AND (s.site_limit > 0)) THEN (sl.gross_loss / s.site_limit) ELSE 0 END AS drvmet3, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.gross_loss / s.premium) ELSE 0 END AS drvmet4, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.damage_loss / s.premium) ELSE 0 END AS drvmet5 FROM (((((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((p.portfolio_id = s.portfolio_id) AND (p.peril_id = s.peril_id)))) JOIN policy_exposure pe ON (((s.portfolio_id = pe.portfolio_id) AND (s.account_id = pe.account_id)))) LEFT JOIN site_loss_analysis sl ON ((((sl.analysis_id = pa.analysis_id) AND (s.account_id = sl.account_id)) AND (s.site_id = sl.site_id)))) LEFT JOIN policy_loss_analysis pl ON ((((pl.analysis_id = pa.analysis_id) AND (pe.account_id = pl.account_id)) AND (pe.policy_id = pl.policy_id)))) LEFT JOIN lu_geocode_level g ON ((s.g_level_source_id = g.g_level))) JOIN lu_mc_maplevel4 ml ON ((s.g_mc_level4_id = ml.g_mc_level4_id)));

GO
/****** Object:  View [dbo].[vw_map_site_maplevel5]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_map_site_maplevel5]
 AS
SELECT p.portfolio_id, s.g_mc_level1_id, s.g_mc_level2_id, s.g_mc_level3_id, s.g_mc_level4_id, s.g_mc_level5_id, s.g_mc_level6_id, s.arcgis_id, s.country_id, s.shape, s.lob1, s.occ_short_desc, s.const_short_desc, s.num_stories, s.year_built, s.g_level, g."description" AS g_level_desc, (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv, s.cov1val, s.cov2val, s.cov3val, s.cov4val, s.cov5val, s.cov6val, 1 AS site_count, s.risk_count, s.shift_count, s.payroll, s.empl_count, s.calc_num_empl, s.max_empl, s.shift1, s.shift2, s.shift3, s.shift4, s.deduct_type, s.limit_type, s.premium, s.site_limit, s.site_bl_limit, s.site_deduct, s.site_bl_deduct, s.cmb_deduct, s.cmb_limit, s.agg_limit, s.cov1limit, s.cov1deduct, s.cov2limit, s.cov2deduct, s.cov3limit, s.cov3deduct, s.cov4limit, s.cov4deduct, s.cov4days, s.cov5limit, s.cov5deduct, s.cov6limit, s.cov6deduct, sl.gross_loss, sl.damage_loss, sl.net_loss, ml.mc_level5_display, ml.mc_level5_code, ml.mc_level5_type, s.s_udf_met1, s.s_udf_met2, s.s_udf_met3, s.s_udf_met4, s.s_udf_met5, s.s_udf_met6, s.s_udf_met7, s.s_udf_met8, s.s_udf_met9, s.s_udf_met10, s.s_udf_attr1, s.s_udf_attr2, s.s_udf_attr3, s.s_udf_attr4, s.s_udf_attr5, s.s_udf_attr6, s.s_udf_attr7, s.s_udf_attr8, s.s_udf_attr9, s.s_udf_attr10, pe.policy_id, pe.policy_status, pe.pol_lob, pe.policy_name, pe.policy_num, pe.incept_date, pe.expire_date, pe.policy_limit, pe.policy_deduct, pe.premium AS policy_premium, pe.policy_bl_deduct, pe.min_deduct, pe.max_deduct, pe.policy_bl_grosslimit, pe.cov1_limit, pe.cov1_deduct, pe.cov2_limit, pe.cov2_deduct, pe.cov3_limit, pe.cov3_deduct, pe.cov4_limit, pe.cov4_deduct, pe.cov5_limit, pe.cov5_deduct, pe.cov6_limit, pe.cov6_deduct, pe.agg_deduct, pe.cmb_limit AS policy_cmb_limit, pe.cmbinded_deduct, pe.sub_limit, pe.sub_deduct, pl.gross_loss AS policy_gross_loss, pl.damage_loss AS policy_damage_loss, pl.net_loss AS policy_net_loss, pe.p_udf_met1, pe.p_udf_met2, pe.p_udf_met3, pe.p_udf_met4, pe.p_udf_met5, pe.p_udf_met6, pe.p_udf_met7, pe.p_udf_met8, pe.p_udf_met9, pe.p_udf_met10, pe.p_udf_met11, pe.p_udf_met12, pe.p_udf_met13, pe.p_udf_met14, pe.p_udf_met15, pe.p_udf_attr1, pe.p_udf_attr2, pe.p_udf_attr3, pe.p_udf_attr4, pe.p_udf_attr5, pe.p_udf_attr6, pe.p_udf_attr7, pe.p_udf_attr8, pe.p_udf_attr9, pe.p_udf_attr10, pe.p_udf_attr11, pe.p_udf_attr12, pe.p_udf_attr13, pe.p_udf_attr14, pe.p_udf_attr15, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.gross_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet1, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.damage_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet2, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.site_limit IS NOT NULL)) AND (s.site_limit > 0)) THEN (sl.gross_loss / s.site_limit) ELSE 0 END AS drvmet3, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.gross_loss / s.premium) ELSE 0 END AS drvmet4, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.damage_loss / s.premium) ELSE 0 END AS drvmet5 FROM (((((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((p.portfolio_id = s.portfolio_id) AND (p.peril_id = s.peril_id)))) JOIN policy_exposure pe ON (((s.portfolio_id = pe.portfolio_id) AND (s.account_id = pe.account_id)))) LEFT JOIN site_loss_analysis sl ON ((((sl.analysis_id = pa.analysis_id) AND (s.account_id = sl.account_id)) AND (s.site_id = sl.site_id)))) LEFT JOIN policy_loss_analysis pl ON ((((pl.analysis_id = pa.analysis_id) AND (pe.account_id = pl.account_id)) AND (pe.policy_id = pl.policy_id)))) LEFT JOIN lu_geocode_level g ON ((s.g_level_source_id = g.g_level))) JOIN lu_mc_maplevel5 ml ON ((s.g_mc_level5_id = ml.g_mc_level5_id)));

GO
/****** Object:  View [dbo].[vw_map_site_maplevel6]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_map_site_maplevel6]
 AS
SELECT p.portfolio_id, s.g_mc_level1_id, s.g_mc_level2_id, s.g_mc_level3_id, s.g_mc_level4_id, s.g_mc_level5_id, s.g_mc_level6_id, s.arcgis_id, s.country_id, s.shape, s.lob1, s.occ_short_desc, s.const_short_desc, s.num_stories, s.year_built, s.g_level, g."description" AS g_level_desc, (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv, s.cov1val, s.cov2val, s.cov3val, s.cov4val, s.cov5val, s.cov6val, 1 AS site_count, s.risk_count, s.shift_count, s.payroll, s.empl_count, s.calc_num_empl, s.max_empl, s.shift1, s.shift2, s.shift3, s.shift4, s.deduct_type, s.limit_type, s.premium, s.site_limit, s.site_bl_limit, s.site_deduct, s.site_bl_deduct, s.cmb_deduct, s.cmb_limit, s.agg_limit, s.cov1limit, s.cov1deduct, s.cov2limit, s.cov2deduct, s.cov3limit, s.cov3deduct, s.cov4limit, s.cov4deduct, s.cov4days, s.cov5limit, s.cov5deduct, s.cov6limit, s.cov6deduct, sl.gross_loss, sl.damage_loss, sl.net_loss, ml.mc_level6_display, ml.mc_level6_code, ml.mc_level6_type, s.s_udf_met1, s.s_udf_met2, s.s_udf_met3, s.s_udf_met4, s.s_udf_met5, s.s_udf_met6, s.s_udf_met7, s.s_udf_met8, s.s_udf_met9, s.s_udf_met10, s.s_udf_attr1, s.s_udf_attr2, s.s_udf_attr3, s.s_udf_attr4, s.s_udf_attr5, s.s_udf_attr6, s.s_udf_attr7, s.s_udf_attr8, s.s_udf_attr9, s.s_udf_attr10, pe.policy_id, pe.policy_status, pe.pol_lob, pe.policy_name, pe.policy_num, pe.incept_date, pe.expire_date, pe.policy_limit, pe.policy_deduct, pe.premium AS policy_premium, pe.policy_bl_deduct, pe.min_deduct, pe.max_deduct, pe.policy_bl_grosslimit, pe.cov1_limit, pe.cov1_deduct, pe.cov2_limit, pe.cov2_deduct, pe.cov3_limit, pe.cov3_deduct, pe.cov4_limit, pe.cov4_deduct, pe.cov5_limit, pe.cov5_deduct, pe.cov6_limit, pe.cov6_deduct, pe.agg_deduct, pe.cmb_limit AS policy_cmb_limit, pe.cmbinded_deduct, pe.sub_limit, pe.sub_deduct, pl.gross_loss AS policy_gross_loss, pl.damage_loss AS policy_damage_loss, pl.net_loss AS policy_net_loss, pe.p_udf_met1, pe.p_udf_met2, pe.p_udf_met3, pe.p_udf_met4, pe.p_udf_met5, pe.p_udf_met6, pe.p_udf_met7, pe.p_udf_met8, pe.p_udf_met9, pe.p_udf_met10, pe.p_udf_met11, pe.p_udf_met12, pe.p_udf_met13, pe.p_udf_met14, pe.p_udf_met15, pe.p_udf_attr1, pe.p_udf_attr2, pe.p_udf_attr3, pe.p_udf_attr4, pe.p_udf_attr5, pe.p_udf_attr6, pe.p_udf_attr7, pe.p_udf_attr8, pe.p_udf_attr9, pe.p_udf_attr10, pe.p_udf_attr11, pe.p_udf_attr12, pe.p_udf_attr13, pe.p_udf_attr14, pe.p_udf_attr15, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.gross_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet1, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) IS NOT NULL)) AND ((((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) > 0)) THEN (sl.damage_loss / (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val)) ELSE 0 END AS drvmet2, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.site_limit IS NOT NULL)) AND (s.site_limit > 0)) THEN (sl.gross_loss / s.site_limit) ELSE 0 END AS drvmet3, CASE WHEN ((((sl.gross_loss IS NOT NULL) AND (sl.gross_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.gross_loss / s.premium) ELSE 0 END AS drvmet4, CASE WHEN ((((sl.damage_loss IS NOT NULL) AND (sl.damage_loss > 0)) AND (s.premium IS NOT NULL)) AND (s.premium > 0)) THEN (sl.damage_loss / s.premium) ELSE 0 END AS drvmet5 FROM (((((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((p.portfolio_id = s.portfolio_id) AND (p.peril_id = s.peril_id)))) JOIN policy_exposure pe ON (((s.portfolio_id = pe.portfolio_id) AND (s.account_id = pe.account_id)))) LEFT JOIN site_loss_analysis sl ON ((((sl.analysis_id = pa.analysis_id) AND (s.account_id = sl.account_id)) AND (s.site_id = sl.site_id)))) LEFT JOIN policy_loss_analysis pl ON ((((pl.analysis_id = pa.analysis_id) AND (pe.account_id = pl.account_id)) AND (pe.policy_id = pl.policy_id)))) LEFT JOIN lu_geocode_level g ON ((s.g_level_source_id = g.g_level))) JOIN lu_mc_maplevel6 ml ON ((s.g_mc_level6_id = ml.g_mc_level6_id)));

GO
/****** Object:  View [dbo].[vw_pointaccumulation_sp_results]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE
     VIEW [dbo].[vw_pointaccumulation_sp_results] AS
SELECT s.site_id,
     p.portfolio_id,
     p.portfolio_name AS sp_portfolio_name,
     pas.sp_site_shape,
     p.peril_id,
     sl.vendor_id,
     sl.model_id,
     s.account_id,
     s.arcgis_id,
     s.nz_grid_id,
     s.account_num,
     s.sitenum,
     s.sitename,
     s.site_lat,
     s.site_long,
     s.shape,
     s.country_id,
     c.country_name,
     c.iso2,
     c.iso3,
     s.currency,
     s.g_mc_level1_id,
     s.g_mc_level2_id,
     s.g_mc_level3_id,
     s.g_mc_level4_id,
     s.g_mc_level5_id,
     s.g_mc_level6_id,
     s.g_level,
     g."description" AS g_level_desc,
     s.full_address,
     s.street_addr,
     s.municipality,
     s.postalcode,
     s.cresta,
     s.blg_num,
     s.blg_name,
     s.lob1,
     s.lob2,
     s.occ_short_desc,
     s.const_short_desc,
     s.num_stories,
     s.year_built,
     s.expire_date,
     s.incept_date,
     (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv,
     s.cov1val,
     s.cov2val,
     s.cov3val,
     s.cov4val,
     s.cov5val,
     s.cov6val,
     1 AS site_count,
     s.risk_count,
     s.shift_count,
     s.payroll,
     s.empl_count,
     s.calc_num_empl,
     s.max_empl,
     s.shift1,
     s.shift2,
     s.shift3,
     s.shift4,
     s.deduct_type,
     s.limit_type,
     s.premium,
     s.site_limit,
     s.site_bl_limit,
     s.site_deduct,
     s.site_bl_deduct,
     s.cmb_deduct,
     s.cmb_limit,
     s.agg_limit,
     s.cov1limit,
     s.cov1deduct,
     s.cov2limit,
     s.cov2deduct,
     s.cov3limit,
     s.cov3deduct,
     s.cov4limit,
     s.cov4deduct,
     s.cov4days,
     s.cov5limit,
     s.cov5deduct,
     s.cov6limit,
     s.cov6deduct,
     sl.gross_loss,
     sl.damage_loss,
     sl.net_loss,
     s.s_udf_met1,
     s.s_udf_met2,
     s.s_udf_met3,
     s.s_udf_met4,
     s.s_udf_met5,
     s.s_udf_met6,
     s.s_udf_met7,
     s.s_udf_met8,
     s.s_udf_met9,
     s.s_udf_met10,
     s.s_udf_attr1,
     s.s_udf_attr2,
     s.s_udf_attr3,
     s.s_udf_attr4,
     s.s_udf_attr5,
     s.s_udf_attr6,
     s.s_udf_attr7,
     s.s_udf_attr8,
     s.s_udf_attr9,
     s.s_udf_attr10,
     pe.policy_id,
     pe.policy_status,
     pe.pol_lob,
     pe.policy_name,
     pe.policy_num,
     pe.incept_date AS policy_incept_date,
     pe.expire_date AS policy_expire_date,
     pe.policy_limit,
     pe.policy_deduct,
     pe.policy_bl_deduct,
     pe.min_deduct,
     pe.max_deduct,
     pe.policy_bl_grosslimit,
     pe.cov1_limit,
     pe.cov1_deduct,
     pe.cov2_limit,
     pe.cov2_deduct,
     pe.cov3_limit,
     pe.cov3_deduct,
     pe.cov4_limit,
     pe.cov4_deduct,
     pe.cov5_limit,
     pe.cov5_deduct,
     pe.cov6_limit,
     pe.cov6_deduct,
     pe.agg_deduct,
     pe.cmb_limit AS policy_cmb_limit,
     pe.cmbinded_deduct,
     pe.sub_limit,
     pe.sub_deduct,
     pl.gross_loss AS policy_gross_loss,
     pl.damage_loss AS policy_damage_loss,
     pl.net_loss AS policy_net_loss,
     pe.p_udf_met1,
     pe.p_udf_met2,
     pe.p_udf_met3,
     pe.p_udf_met4,
     pe.p_udf_met5,
     pe.p_udf_met6,
     pe.p_udf_met7,
     pe.p_udf_met8,
     pe.p_udf_met9,
     pe.p_udf_met10,
     pe.p_udf_met11,
     pe.p_udf_met12,
     pe.p_udf_met13,
     pe.p_udf_met14,
     pe.p_udf_met15,
     pe.p_udf_attr1,
     pe.p_udf_attr2,
     pe.p_udf_attr3,
     pe.p_udf_attr4,
     pe.p_udf_attr5,
     pe.p_udf_attr6,
     pe.p_udf_attr7,
     pe.p_udf_attr8,
     pe.p_udf_attr9,
     pe.p_udf_attr10,
     pe.p_udf_attr11,
     pe.p_udf_attr12,
     pe.p_udf_attr13,
     pe.p_udf_attr14,
     pe.p_udf_attr15,
     CASE WHEN sl.gross_loss is NOT NULL
    AND sl.gross_loss > 0
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val is  NOT NULL
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val > 0
        THEN sl.gross_loss / (s.cov1val + s.cov2val + s.cov3val + s.cov4val)
        ELSE 0
END AS drvmet1,
      CASE WHEN sl.damage_loss is NOT NULL
    AND sl.gross_loss > 0
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val is  NOT NULL
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val > 0
        THEN sl.gross_loss / (s.cov1val + s.cov2val + s.cov3val + s.cov4val)
        ELSE 0
END AS drvmet2,
     CASE WHEN sl.gross_loss is NOT NULL
    AND sl.gross_loss > 0 AND s.site_limit is NOT NULL
    AND s.site_limit > 0 THEN sl.gross_loss / s.site_limit ELSE 0 END AS drvmet3,
    CASE WHEN sl.gross_loss is NOT NULL  AND sl.gross_loss > 0 AND s.premium is NOT NULL
    AND s.premium > 0 THEN sl.gross_loss / s.premium ELSE 0
END AS drvmet4,
     CASE WHEN sl.damage_loss is NOT NULL
    AND sl.damage_loss > 0
    AND s.premium is NOT NULL
    AND s.premium > 0 THEN sl.damage_loss / s.premium ELSE 0
END AS drvmet5,
     pas.cp_site_id,
     pas.bufferzone_id,
     pas.sp_site_id,
     pas.pa_analysis_id
FROM ((((((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((p.portfolio_id = s.portfolio_id)
    AND (p.peril_id = s.peril_id)))) JOIN policy_exposure pe ON (((s.portfolio_id = pe.portfolio_id)
    AND (s.account_id = pe.account_id)))) LEFT JOIN site_loss_analysis sl ON ((((sl.analysis_id = pa.analysis_id)
    AND (s.account_id = sl.account_id))
    AND (s.site_id = sl.site_id)))) LEFT JOIN policy_loss_analysis pl ON ((((pl.analysis_id = pa.analysis_id)
    AND (pe.account_id = pl.account_id))
    AND (pe.policy_id = pl.policy_id)))) JOIN pointaccumulation_sp_results pas ON ((((pas.sp_portfolio_id = s.portfolio_id)
    AND (pas.account_id = s.account_id))
    AND (pas.sp_site_id = s.site_id)))) JOIN lu_country c ON ((s.country_id = c.g_country_id))) LEFT JOIN lu_geocode_level g ON ((s.g_level = g.g_level)));

GO
/****** Object:  View [dbo].[vw_policy_fields]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE
    view [dbo].[vw_policy_fields] AS
SELECT se.portfolio_id,
     se.account_id,
     pe.policy_id,
     se.site_id,
     MAX(pe.policy_limit) AS policy_limit,
     (((pe.cov1_deduct + pe.cov2_deduct) + pe.cov3_deduct) + pe.cov4_deduct) AS policy_deductible,
     pe.policy_deduct,
     pe.premium AS policy_premium,
     (((se.cov1val + se.cov2val) + se.cov3val) + se.cov4val) AS tiv,
     se.site_deduct,
     se.premium AS site_premium,
     se.site_limit,
     se.risk_count
FROM ((policy_exposure pe JOIN portfolio_account pa ON (((pe.account_id = pa.account_id)
    AND (pe.portfolio_id = pa.portfolio_id)))) JOIN site_exposure se ON (((se.account_id = pa.account_id)
    AND (se.portfolio_id = pa.portfolio_id))))
GROUP BY se.portfolio_id,
     se.account_id,
     pe.policy_id,
     se.site_id,
     (((pe.cov1_deduct + pe.cov2_deduct) + pe.cov3_deduct) + pe.cov4_deduct),
     pe.policy_deduct,
     pe.premium,
     (((se.cov1val + se.cov2val) + se.cov3val) + se.cov4val),
     se.site_deduct,
     se.premium,
     se.site_limit,
     se.risk_count;
GO
/****** Object:  View [dbo].[vw_portfolio_filter]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_portfolio_filter]
 AS
SELECT DISTINCT se.portfolio_id, se.country_id, se.g_mc_level1_id, se.g_mc_level2_id, se.g_mc_level3_id, se.g_mc_level4_id, se.g_mc_level5_id, se.g_mc_level6_id, se.g_level, se.site_id, se.cov1val, se.cov2val, se.cov3val, se.cov4val, (((se.cov1val + se.cov2val) + se.cov3val) + se.cov4val) AS tiv, se.risk_count, se.site_limit, se.premium, se.site_deduct, se.shift1, se.shift2, se.shift3, se.shift4, se.max_empl, se.calc_num_empl, se.payroll, se.empl_count, sla.gross_loss, sla.damage_loss, sla.net_loss, se.lob1, se.year_built, se.num_stories, se.const_short_desc, se.occ_short_desc, se.s_udf_met1, se.s_udf_met2, se.s_udf_met3, se.s_udf_met4, se.s_udf_met5, se.s_udf_met6, se.s_udf_met7, se.s_udf_met8, se.s_udf_met9, se.s_udf_met10, se.s_udf_attr1, se.s_udf_attr2, se.s_udf_attr3, se.s_udf_attr4, se.s_udf_attr5, se.s_udf_attr6, se.s_udf_attr7, se.s_udf_attr8, se.s_udf_attr9, se.s_udf_attr10, pe.policy_status, pe.pol_lob, pe.incept_date, pe.expire_date, pe.policy_limit, pe.policy_deduct, pe.premium AS policy_premium, pe.policy_bl_deduct, pe.min_deduct, pe.max_deduct, pe.policy_bl_grosslimit, pe.cov1_limit, pe.cov1_deduct, pe.cov2_limit, pe.cov2_deduct, pe.cov3_limit, pe.cov3_deduct, pe.cov4_limit, pe.cov4_deduct, pe.cov5_limit, pe.cov5_deduct, pe.cov6_limit, pe.cov6_deduct, pe.agg_deduct, pe.cmb_limit AS policy_cmb_limit, pe.cmbinded_deduct, pe.sub_limit, pe.sub_deduct, pl.gross_loss AS policy_gross_loss, pl.damage_loss AS policy_damage_loss, pl.net_loss AS policy_net_loss, pe.p_udf_met1, pe.p_udf_met2, pe.p_udf_met3, pe.p_udf_met4, pe.p_udf_met5, pe.p_udf_met6, pe.p_udf_met7, pe.p_udf_met8, pe.p_udf_met9, pe.p_udf_met10, pe.p_udf_met11, pe.p_udf_met12, pe.p_udf_met13, pe.p_udf_met14, pe.p_udf_met15, pe.p_udf_attr1, pe.p_udf_attr2, pe.p_udf_attr3, pe.p_udf_attr4, pe.p_udf_attr5, pe.p_udf_attr6, pe.p_udf_attr7, pe.p_udf_attr8, pe.p_udf_attr9, pe.p_udf_attr10, pe.p_udf_attr11, pe.p_udf_attr12, pe.p_udf_attr13, pe.p_udf_attr14, pe.p_udf_attr15, CASE WHEN ((((sla.gross_loss IS NOT NULL) AND (sla.gross_loss > 0)) AND ((((se.cov1val + se.cov2val) + se.cov3val) + se.cov4val) IS NOT NULL)) AND ((((se.cov1val + se.cov2val) + se.cov3val) + se.cov4val) > 0)) THEN (sla.gross_loss / (((se.cov1val + se.cov2val) + se.cov3val) + se.cov4val)) ELSE 0 END AS drvmet1, CASE WHEN ((((sla.damage_loss IS NOT NULL) AND (sla.damage_loss > 0)) AND ((((se.cov1val + se.cov2val) + se.cov3val) + se.cov4val) IS NOT NULL)) AND ((((se.cov1val + se.cov2val) + se.cov3val) + se.cov4val) > 0)) THEN (sla.damage_loss / (((se.cov1val + se.cov2val) + se.cov3val) + se.cov4val)) ELSE 0 END AS drvmet2, CASE WHEN ((((sla.gross_loss IS NOT NULL) AND (sla.gross_loss > 0)) AND (se.site_limit IS NOT NULL)) AND (se.site_limit > 0)) THEN (sla.gross_loss / se.site_limit) ELSE 0 END AS drvmet3, CASE WHEN ((((sla.gross_loss IS NOT NULL) AND (sla.gross_loss > 0)) AND (se.premium IS NOT NULL)) AND (se.premium > 0)) THEN (sla.gross_loss / se.premium) ELSE 0 END AS drvmet4, CASE WHEN ((((sla.damage_loss IS NOT NULL) AND (sla.damage_loss > 0)) AND (se.premium IS NOT NULL)) AND (se.premium > 0)) THEN (sla.damage_loss / se.premium) ELSE 0 END AS drvmet5 FROM ((((site_exposure se LEFT JOIN portfolio_analysis pa ON (((se.portfolio_id = pa.portfolio_id) AND (se.peril_id = pa.peril_id)))) JOIN policy_exposure pe ON (((se.portfolio_id = pe.portfolio_id) AND (se.account_id = pe.account_id)))) LEFT JOIN site_loss_analysis sla ON (((((sla.analysis_id = pa.analysis_id) AND (se.account_id = sla.account_id)) AND (se.site_id = sla.site_id)) AND (se.portfolio_id = sla.portfolio_id)))) LEFT JOIN policy_loss_analysis pl ON (((((pl.analysis_id = pa.analysis_id) AND (pe.account_id = pl.account_id)) AND (pe.policy_id = pl.policy_id)) AND (pe.portfolio_id = pl.portfolio_id))));

GO
/****** Object:  View [dbo].[vw_portfolio_metrics]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_portfolio_metrics]
 AS
SELECT portfolio_exposure_loss_by_ct.portfolio_id, portfolio_exposure_loss_by_ct.country_id, portfolio_exposure_loss_by_ct.cov1val, portfolio_exposure_loss_by_ct.cov2val, portfolio_exposure_loss_by_ct.cov3val, portfolio_exposure_loss_by_ct.cov4val, (((portfolio_exposure_loss_by_ct.cov1val + portfolio_exposure_loss_by_ct.cov2val) + portfolio_exposure_loss_by_ct.cov3val) + portfolio_exposure_loss_by_ct.cov4val) AS tiv, portfolio_exposure_loss_by_ct.risk_count, portfolio_exposure_loss_by_ct.site_limit, portfolio_exposure_loss_by_ct.premium, portfolio_exposure_loss_by_ct.site_deduct, portfolio_exposure_loss_by_ct.shift1, portfolio_exposure_loss_by_ct.shift2, portfolio_exposure_loss_by_ct.shift3, portfolio_exposure_loss_by_ct.shift4, portfolio_exposure_loss_by_ct.max_empl, portfolio_exposure_loss_by_ct.calc_num_empl, portfolio_exposure_loss_by_ct.payroll, portfolio_exposure_loss_by_ct.empl_count, portfolio_exposure_loss_by_ct.gross_loss, portfolio_exposure_loss_by_ct.damage_loss, portfolio_exposure_loss_by_ct.net_loss FROM portfolio_exposure_loss_by_ct GROUP BY portfolio_exposure_loss_by_ct.portfolio_id, portfolio_exposure_loss_by_ct.country_id, portfolio_exposure_loss_by_ct.cov1val, portfolio_exposure_loss_by_ct.cov2val, portfolio_exposure_loss_by_ct.cov3val, portfolio_exposure_loss_by_ct.cov4val, (((portfolio_exposure_loss_by_ct.cov1val + portfolio_exposure_loss_by_ct.cov2val) + portfolio_exposure_loss_by_ct.cov3val) + portfolio_exposure_loss_by_ct.cov4val), portfolio_exposure_loss_by_ct.risk_count, portfolio_exposure_loss_by_ct.site_limit, portfolio_exposure_loss_by_ct.premium, portfolio_exposure_loss_by_ct.site_deduct, portfolio_exposure_loss_by_ct.shift1, portfolio_exposure_loss_by_ct.shift2, portfolio_exposure_loss_by_ct.shift3, portfolio_exposure_loss_by_ct.shift4, portfolio_exposure_loss_by_ct.max_empl, portfolio_exposure_loss_by_ct.calc_num_empl, portfolio_exposure_loss_by_ct.payroll, portfolio_exposure_loss_by_ct.empl_count, portfolio_exposure_loss_by_ct.gross_loss, portfolio_exposure_loss_by_ct.damage_loss, portfolio_exposure_loss_by_ct.net_loss;

GO
/****** Object:  View [dbo].[vw_portfolio_site_exposure]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_portfolio_site_exposure]
 AS
SELECT DISTINCT se.portfolio_id, se.country_id, se.g_mc_level1_id, se.g_mc_level2_id, se.g_mc_level3_id, se.g_mc_level4_id, se.g_mc_level5_id, se.g_mc_level6_id, se.g_level, se.site_id, se.cov1val, se.cov2val, se.cov3val, se.cov4val, (((se.cov1val + se.cov2val) + se.cov3val) + se.cov4val) AS tiv, se.risk_count, se.site_limit, se.premium, se.site_deduct, se.shift1, se.shift2, se.shift3, se.shift4, se.max_empl, se.calc_num_empl, se.payroll, se.empl_count, sla.gross_loss, sla.damage_loss, sla.net_loss, se.lob1, se.year_built, se.num_stories, se.const_short_desc, se.occ_short_desc FROM ((site_exposure se LEFT JOIN portfolio_analysis pa ON (((se.portfolio_id = pa.portfolio_id) AND (se.peril_id = pa.peril_id)))) LEFT JOIN site_loss_analysis sla ON ((((se.portfolio_id = sla.portfolio_id) AND (se.peril_id = sla.peril_id)) AND (se.site_id = sla.site_id))));

GO
/****** Object:  View [dbo].[vw_portfolio_site_metrics]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_portfolio_site_metrics]
 AS
SELECT DISTINCT se.portfolio_id, se.country_id, se.g_mc_level1_id, se.g_mc_level2_id, se.g_mc_level3_id, se.g_mc_level4_id, se.g_mc_level5_id, se.g_mc_level6_id, se.site_id, se.cov1val, se.cov2val, se.cov3val, se.cov4val, (((se.cov1val + se.cov2val) + se.cov3val) + se.cov4val) AS tiv, se.risk_count, se.site_limit, se.premium, se.site_deduct, se.shift1, se.shift2, se.shift3, se.shift4, se.max_empl, se.calc_num_empl, se.payroll, se.empl_count, sla.gross_loss, sla.damage_loss, sla.net_loss FROM ((site_exposure se LEFT JOIN portfolio_analysis pa ON (((se.portfolio_id = pa.portfolio_id) AND (se.peril_id = pa.peril_id)))) LEFT JOIN site_loss_analysis sla ON ((((se.portfolio_id = sla.portfolio_id) AND (se.peril_id = sla.peril_id)) AND (se.site_id = sla.site_id))));

GO
/****** Object:  View [dbo].[vw_site_fields]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_site_fields]
 AS
SELECT p.portfolio_id, p.peril_id, sl.vendor_id, sl.model_id, s.account_id, s.site_id, s.arcgis_id, s.nz_grid_id, s.account_num, s.sitenum, s.sitename, s.site_lat, s.site_long, s.shape, s.country_id, c.country_name, c.iso2, c.iso3, s.currency, s.g_mc_level1_id, s.g_mc_level2_id, s.g_mc_level3_id, s.g_mc_level4_id, s.g_mc_level5_id, s.g_mc_level6_id, s.g_level, g."description" AS g_level_desc, s.full_address, s.street_addr, s.municipality, s.postalcode, s.cresta, s.blg_num, s.blg_name, s.lob1, s.lob2, s.occ_short_desc, s.const_short_desc, s.num_stories, s.year_built, s.expire_date, s.incept_date, (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv, s.cov1val, s.cov2val, s.cov3val, s.cov4val, s.cov5val, s.cov6val, 1 AS site_count, s.risk_count, s.shift_count, s.payroll, s.empl_count, s.calc_num_empl, s.max_empl, s.shift1, s.shift2, s.shift3, s.shift4, s.deduct_type, s.limit_type, s.premium, s.site_limit, s.site_bl_limit, s.site_deduct, s.site_bl_deduct, s.cmb_deduct, s.cmb_limit, s.agg_limit, s.cov1limit, s.cov1deduct, s.cov2limit, s.cov2deduct, s.cov3limit, s.cov3deduct, s.cov4limit, s.cov4deduct, s.cov4days, s.cov5limit, s.cov5deduct, s.cov6limit, s.cov6deduct, sl.gross_loss, sl.damage_loss, sl.net_loss, s.s_udf_met1, s.s_udf_met2, s.s_udf_met3, s.s_udf_met4, s.s_udf_met5, s.s_udf_met6, s.s_udf_met7, s.s_udf_met8, s.s_udf_met9, s.s_udf_met10, s.s_udf_attr1, s.s_udf_attr2, s.s_udf_attr3, s.s_udf_attr4, s.s_udf_attr5, s.s_udf_attr6, s.s_udf_attr7, s.s_udf_attr8, s.s_udf_attr9, s.s_udf_attr10, pe.policy_id, pe.policy_status, pe.pol_lob, pe.policy_name, pe.policy_num, pe.incept_date AS policy_incept_date, pe.expire_date AS policy_expire_date, pe.policy_limit, pe.policy_deduct, pe.premium AS policy_premium, pe.policy_bl_deduct, pe.min_deduct, pe.max_deduct, pe.policy_bl_grosslimit, pe.cov1_limit, pe.cov1_deduct, pe.cov2_limit, pe.cov2_deduct, pe.cov3_limit, pe.cov3_deduct, pe.cov4_limit, pe.cov4_deduct, pe.cov5_limit, pe.cov5_deduct, pe.cov6_limit, pe.cov6_deduct, pe.agg_deduct, pe.cmb_limit AS policy_cmb_limit, pe.cmbinded_deduct, pe.sub_limit, pe.sub_deduct, pl.gross_loss AS policy_gross_loss, pl.damage_loss AS policy_damage_loss, pl.net_loss AS policy_net_loss, pe.p_udf_met1, pe.p_udf_met2, pe.p_udf_met3, pe.p_udf_met4, pe.p_udf_met5, pe.p_udf_met6, pe.p_udf_met7, pe.p_udf_met8, pe.p_udf_met9, pe.p_udf_met10, pe.p_udf_met11, pe.p_udf_met12, pe.p_udf_met13, pe.p_udf_met14, pe.p_udf_met15, pe.p_udf_attr1, pe.p_udf_attr2, pe.p_udf_attr3, pe.p_udf_attr4, pe.p_udf_attr5, pe.p_udf_attr6, pe.p_udf_attr7, pe.p_udf_attr8, pe.p_udf_attr9, pe.p_udf_attr10, pe.p_udf_attr11, pe.p_udf_attr12, pe.p_udf_attr13, pe.p_udf_attr14, pe.p_udf_attr15 FROM (((((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((p.portfolio_id = s.portfolio_id) AND (p.peril_id = s.peril_id)))) JOIN policy_exposure pe ON (((s.portfolio_id = pe.portfolio_id) AND (s.account_id = pe.account_id)))) LEFT JOIN site_loss_analysis sl ON ((((sl.analysis_id = pa.analysis_id) AND (s.account_id = sl.account_id)) AND (s.site_id = sl.site_id)))) LEFT JOIN policy_loss_analysis pl ON ((((pl.analysis_id = pa.analysis_id) AND (pe.account_id = pl.account_id)) AND (pe.policy_id = pl.policy_id)))) JOIN lu_country c ON ((s.country_id = c.g_country_id))) LEFT JOIN lu_geocode_level g ON ((s.g_level = g.g_level)));

GO
/****** Object:  View [dbo].[vw_site_policy_fields]    Script Date: 6/7/2016 11:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE
     VIEW [dbo].[vw_site_policy_fields] AS
SELECT p.portfolio_id,
     p.peril_id,
     sl.vendor_id,
     sl.model_id,
     s.account_id,
     s.site_id,
     s.arcgis_id,
     s.nz_grid_id,
     s.account_num,
     s.sitenum,
     s.sitename,
     s.site_lat,
     s.site_long,
     s.shape,
     s.country_id,
     c.country_name,
     c.iso2,
     c.iso3,
     s.currency,
     s.g_mc_level1_id,
     s.g_mc_level2_id,
     s.g_mc_level3_id,
     s.g_mc_level4_id,
     s.g_mc_level5_id,
     s.g_mc_level6_id,
     s.g_level,
     g."description" AS g_level_desc,
     s.full_address,
     s.street_addr,
     s.municipality,
     s.postalcode,
     s.cresta,
     s.blg_num,
     s.blg_name,
     s.lob1,
     s.lob2,
     s.occ_short_desc,
     s.const_short_desc,
     s.num_stories,
     s.year_built,
     s.expire_date,
     s.incept_date,
     (((s.cov1val + s.cov2val) + s.cov3val) + s.cov4val) AS tiv,
     s.cov1val,
     s.cov2val,
     s.cov3val,
     s.cov4val,
     s.cov5val,
     s.cov6val,
     1 AS site_count,
     s.risk_count,
     s.shift_count,
     s.payroll,
     s.empl_count,
     s.calc_num_empl,
     s.max_empl,
     s.shift1,
     s.shift2,
     s.shift3,
     s.shift4,
     s.deduct_type,
     s.limit_type,
     s.premium,
     s.site_limit,
     s.site_bl_limit,
     s.site_deduct,
     s.site_bl_deduct,
     s.cmb_deduct,
     s.cmb_limit,
     s.agg_limit,
     s.cov1limit,
     s.cov1deduct,
     s.cov2limit,
     s.cov2deduct,
     s.cov3limit,
     s.cov3deduct,
     s.cov4limit,
     s.cov4deduct,
     s.cov4days,
     s.cov5limit,
     s.cov5deduct,
     s.cov6limit,
     s.cov6deduct,
     sl.gross_loss,
     sl.damage_loss,
     sl.net_loss,
     s.s_udf_met1,
     s.s_udf_met2,
     s.s_udf_met3,
     s.s_udf_met4,
     s.s_udf_met5,
     s.s_udf_met6,
     s.s_udf_met7,
     s.s_udf_met8,
     s.s_udf_met9,
     s.s_udf_met10,
     s.s_udf_attr1,
     s.s_udf_attr2,
     s.s_udf_attr3,
     s.s_udf_attr4,
     s.s_udf_attr5,
     s.s_udf_attr6,
     s.s_udf_attr7,
     s.s_udf_attr8,
     s.s_udf_attr9,
     s.s_udf_attr10,
     pe.policy_id,
     pe.policy_status,
     pe.pol_lob,
     pe.policy_name,
     pe.policy_num,
     pe.incept_date AS policy_incept_date,
     pe.expire_date AS policy_expire_date,
     pe.policy_limit,
     pe.policy_deduct,
     pe.policy_bl_deduct,
     pe.min_deduct,
     pe.max_deduct,
     pe.policy_bl_grosslimit,
     pe.cov1_limit,
     pe.cov1_deduct,
     pe.cov2_limit,
     pe.cov2_deduct,
     pe.cov3_limit,
     pe.cov3_deduct,
     pe.cov4_limit,
     pe.cov4_deduct,
     pe.cov5_limit,
     pe.cov5_deduct,
     pe.cov6_limit,
     pe.cov6_deduct,
     pe.agg_deduct,
     pe.cmb_limit AS policy_cmb_limit,
     pe.cmbinded_deduct,
     pe.sub_limit,
     pe.sub_deduct,
     pl.gross_loss AS policy_gross_loss,
     pl.damage_loss AS policy_damage_loss,
     pl.net_loss AS policy_net_loss,
     pe.p_udf_met1,
     pe.p_udf_met2,
     pe.p_udf_met3,
     pe.p_udf_met4,
     pe.p_udf_met5,
     pe.p_udf_met6,
     pe.p_udf_met7,
     pe.p_udf_met8,
     pe.p_udf_met9,
     pe.p_udf_met10,
     pe.p_udf_met11,
     pe.p_udf_met12,
     pe.p_udf_met13,
     pe.p_udf_met14,
     pe.p_udf_met15,
     pe.p_udf_attr1,
     pe.p_udf_attr2,
     pe.p_udf_attr3,
     pe.p_udf_attr4,
     pe.p_udf_attr5,
     pe.p_udf_attr6,
     pe.p_udf_attr7,
     pe.p_udf_attr8,
     pe.p_udf_attr9,
     pe.p_udf_attr10,
     pe.p_udf_attr11,
     pe.p_udf_attr12,
     pe.p_udf_attr13,
     pe.p_udf_attr14,
     pe.p_udf_attr15,
     CASE WHEN sl.gross_loss is NOT NULL
    AND sl.gross_loss > 0
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val is  NOT NULL
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val > 0 
	THEN sl.gross_loss / (s.cov1val + s.cov2val + s.cov3val + s.cov4val)
	ELSE 0
END AS drvmet1,
      CASE WHEN sl.damage_loss is NOT NULL
    AND sl.gross_loss > 0
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val is  NOT NULL
    AND s.cov1val + s.cov2val + s.cov3val + s.cov4val > 0 
	THEN sl.gross_loss / (s.cov1val + s.cov2val + s.cov3val + s.cov4val)
	ELSE 0
END AS drvmet2,
     CASE WHEN sl.gross_loss is NOT NULL
    AND sl.gross_loss > 0 AND s.site_limit is NOT NULL
    AND s.site_limit > 0 THEN sl.gross_loss / s.site_limit ELSE 0 END AS drvmet3,
    CASE WHEN sl.gross_loss is NOT NULL  AND sl.gross_loss > 0 AND s.premium is NOT NULL
    AND s.premium > 0 THEN sl.gross_loss / s.premium ELSE 0
END AS drvmet4,
     CASE WHEN sl.damage_loss is NOT NULL
    AND sl.damage_loss > 0
    AND s.premium is NOT NULL
    AND s.premium > 0 THEN sl.damage_loss / s.premium ELSE 0
END AS drvmet5
FROM (((((((portfolio p LEFT JOIN portfolio_analysis pa ON ((pa.portfolio_id = p.portfolio_id))) JOIN site_exposure s ON (((p.portfolio_id = s.portfolio_id)
    AND (p.peril_id = s.peril_id)))) JOIN policy_exposure pe ON (((s.portfolio_id = pe.portfolio_id)
    AND (s.account_id = pe.account_id)))) LEFT JOIN site_loss_analysis sl ON (((((sl.analysis_id = pa.analysis_id)
    AND (s.account_id = sl.account_id))
    AND (s.site_id = sl.site_id))
    AND (p.portfolio_id = sl.portfolio_id)))) LEFT JOIN policy_loss_analysis pl ON (((((pl.analysis_id = pa.analysis_id)
    AND (pe.account_id = pl.account_id))
    AND (pe.policy_id = pl.policy_id))
    AND (p.portfolio_id = pl.portfolio_id)))) JOIN lu_country c ON ((s.country_id = c.g_country_id))) LEFT JOIN lu_geocode_level g ON ((s.g_level = g.g_level)));


GO
ALTER TABLE [dbo].[hazard_category_config] ADD  DEFAULT ((0)) FOR [red_clr]
GO
ALTER TABLE [dbo].[hazard_category_config] ADD  DEFAULT ((0)) FOR [green_clr]
GO
ALTER TABLE [dbo].[hazard_category_config] ADD  DEFAULT ((0)) FOR [blue_clr]
GO
ALTER TABLE [dbo].[hazard_status] ADD  DEFAULT ((1)) FOR [analysis_id]
GO
ALTER TABLE [dbo].[portfolio_site_field_config] ADD  DEFAULT ((0)) FOR [is_null]
GO
ALTER TABLE [dbo].[portfolio_site_field_config] ADD  DEFAULT ((0)) FOR [null_analysis_done]
GO
ALTER TABLE [dbo].[underwriting_analysis_saved] ADD  DEFAULT ((1)) FOR [active]
GO
