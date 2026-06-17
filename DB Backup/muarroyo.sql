/****** Object:  Table [dbo].[WEBENGINE_ITEMS]    Script Date: 1/7/2026 3:56:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WEBENGINE_ITEMS](
	[index] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[id] [int] NULL,
	[type] [int] NULL,
	[level] [int] NULL,
	[X] [int] NULL,
	[Y] [int] NULL,
	[option] [int] NULL,
	[exc] [int] NULL,
	[purple] [int] NULL,
	[sell] [int] NULL,
	[class] [int] NULL,
	[luck] [smallint] NULL,
	[skill] [smallint] NULL,
	[max_level] [int] NULL,
	[max_option] [int] NULL,
	[max_exc] [int] NULL,
	[use_harmony] [smallint] NULL,
	[use_refinary] [smallint] NULL,
	[use_sockets] [smallint] NULL,
	[max_sockets] [int] NULL,
	[payment_type] [int] NULL,
	[item_slot] [int] NULL,
	[item_skill_index] [int] NULL,
	[item_twohanded] [int] NULL,
	[item_width] [int] NULL,
	[item_height] [int] NULL,
	[item_serial] [int] NULL,
	[item_req_level] [int] NULL,
	[item_dmg_min] [int] NULL,
	[item_dmg_max] [int] NULL,
	[item_attack_speed] [int] NULL,
	[item_dur] [int] NULL,
	[item_dur_magic] [int] NULL,
	[item_magic_power] [int] NULL,
	[item_req_str] [int] NULL,
	[item_req_agi] [int] NULL,
	[item_req_vit] [int] NULL,
	[item_req_ene] [int] NULL,
	[item_req_cmd] [int] NULL,
	[item_class_dw] [int] NULL,
	[item_class_dk] [int] NULL,
	[item_class_fe] [int] NULL,
	[item_class_mg] [int] NULL,
	[item_class_dl] [int] NULL,
	[item_class_su] [int] NULL,
	[item_class_rf] [int] NULL,
	[item_class_gl] [int] NULL,
	[item_type] [int] NULL,
	[item_kind_a] [int] NULL,
	[item_kind_b] [int] NULL,
	[item_def] [int] NULL,
	[item_blocking] [int] NULL,
	[item_walk_speed] [int] NULL,
	[item_res_ice] [int] NULL,
	[item_res_poison] [int] NULL,
	[item_res_light] [int] NULL,
	[item_res_fire] [int] NULL,
	[item_res_earth] [int] NULL,
	[item_res_wind] [int] NULL,
	[item_res_water] [int] NULL,
	[item_class_rw] [int] NULL,
	[item_class_sr] [int] NULL,
	[item_class_gc] [int] NULL,
	[item_class_lw] [int] NULL,
	[item_class_lm] [int] NULL,
	[item_class_ik] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WEBENGINE_MARKET]    Script Date: 1/7/2026 3:56:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEBENGINE_MARKET](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cat_id] [int] NULL,
	[item_id] [int] NULL,
	[sticklevel] [int] NULL,
	[item] [varchar](64) NULL,
	[price] [bigint] NOT NULL CONSTRAINT [DF__WEBENGINE_MAR__price__269AB60B]  DEFAULT ((0)),
	[price_type] [varchar](50) NULL,
	[seller] [varchar](20) NULL,
	[start_date] [datetime2](7) NULL,
	[is_sold] [smallint] NULL,
	[sold_date] [datetime2](7) NULL,
	[purchased_by] [varchar](20) NULL,
	[protected] [tinyint] NOT NULL CONSTRAINT [DF__WEBENGINE_MAR__prote__278EDA44]  DEFAULT ((0)),
	[Extend] [tinyint] NOT NULL CONSTRAINT [DF__WEBENGINE_MAR__Exten__2882FE7D]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEBENGINE_MARKET_LOGS]    Script Date: 1/7/2026 3:56:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEBENGINE_MARKET_LOGS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[buyer] [varchar](10) NULL,
	[seller] [varchar](10) NULL,
	[item] [varchar](64) NULL,
	[date] [datetime2](7) NULL,
	[type] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEBENGINE_WEB_BANK]    Script Date: 1/7/2026 3:56:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEBENGINE_WEB_BANK](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [varchar](10) NOT NULL,
	[zen] [bigint] NOT NULL DEFAULT ((0)),
	[ruud] [bigint] NOT NULL DEFAULT ((0)),
	[bless] [int] NOT NULL DEFAULT ((0)),
	[soul] [int] NOT NULL DEFAULT ((0)),
	[life] [int] NOT NULL DEFAULT ((0)),
	[chaos] [int] NOT NULL DEFAULT ((0)),
	[harmony] [int] NOT NULL DEFAULT ((0)),
	[creation] [int] NOT NULL DEFAULT ((0)),
	[guardian] [int] NOT NULL DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEBENGINE_WEB_BANK_CUSTOM]    Script Date: 1/7/2026 3:56:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEBENGINE_WEB_BANK_CUSTOM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[hex] [varchar](64) NOT NULL,
	[limit] [bigint] NOT NULL,
	[type] [smallint] NULL,
	[ident] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO