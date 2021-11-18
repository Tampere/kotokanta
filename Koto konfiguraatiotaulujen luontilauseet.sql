/*
	Luodaan koko - halujen k‰ytt‰m‰t taulut
*/

--create schema dbo
--go


CREATE TABLE [dbo].[koto_config](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[destination_schema_name] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[destination_table_name] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drop_table] [bit] NULL,
	[relative_URL] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[request_body] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order] [int] NULL,
	[active] [bit] NULL,
	[free] [bit] NULL,
	[version] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[description] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_koto_config] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER AUTHORIZATION ON [dbo].[koto_config] TO  SCHEMA OWNER 
GO


CREATE TABLE [dbo].[koto_config_master](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[destination_schema_name] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[destination_table_name] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drop_table] [bit] NULL,
	[relative_URL] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[request_body] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order] [int] NULL,
	[active] [bit] NULL,
	[free] [bit] NULL,
	[version] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[description] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[columns_for_view] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_koto_config_master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER AUTHORIZATION ON [dbo].[koto_config_master] TO  SCHEMA OWNER 
GO


CREATE TABLE [dbo].[koto_definition_run_log](
	[id] [bigint] NULL,
	[loop_num] [int] NULL,
	[tbl_id] [bigint] NULL,
	[tbl_nimi] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[yyyy_viimeisin] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[yyyy_nyt] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[yyyy_uusi_kausi] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[yyyy_viimeisin_lisatty] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[kauden_txt__alkukohta] [int] NULL,
	[kauden_value_alkukohta] [int] NULL,
	[query_alkuosa] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[query_loppuosa] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notes] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER AUTHORIZATION ON [dbo].[koto_definition_run_log] TO  SCHEMA OWNER 
GO



CREATE TABLE [dbo].[koto_loading_log](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[koto_config_id] [bigint] NOT NULL,
	[rowsRead] [int] NULL,
	[rowsCopied] [int] NULL,
	[timestamp] [datetime2](7) NULL,
	[error] [bit] NULL,
	[message] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_koto_loading_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER AUTHORIZATION ON [dbo].[koto_loading_log] TO  SCHEMA OWNER 
GO

ALTER TABLE [dbo].[koto_config] ADD  CONSTRAINT [DF_koto_config_drop_table]  DEFAULT (0x00) FOR [drop_table]
GO

ALTER TABLE [dbo].[koto_config] ADD  CONSTRAINT [DF_koto_config_order]  DEFAULT ((1)) FOR [order]
GO

ALTER TABLE [dbo].[koto_config] ADD  CONSTRAINT [DF_koto_config_active]  DEFAULT (0x01) FOR [active]
GO

ALTER TABLE [dbo].[koto_config] ADD  CONSTRAINT [DF_koto_config_free]  DEFAULT (0x00) FOR [free]
GO

ALTER TABLE [dbo].[koto_config_master] ADD  CONSTRAINT [DF_koto_config_master_order]  DEFAULT ((1)) FOR [order]
GO

ALTER TABLE [dbo].[koto_loading_log] ADD  CONSTRAINT [DF_koto_loading_log_error]  DEFAULT (0x00) FOR [error]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Automattinen kentt‰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Konfiguraatiolle annettu selvent‰v‰ nimi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kohdetaulun tietokanta scheman nimi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'destination_schema_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kohdetaulun tietokanta taulun nimi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'destination_table_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tieto poistetaanko taulu ennen latausta. Mahdollistaa muutokset taulun kentt‰ m‰‰rityksess‰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'drop_table'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL-lis‰m‰‰ritys joka lis‰t‰‰n kiinte‰n URL m‰‰ritykseen' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'relative_URL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'JSON m‰‰ritys joka annetaan pyynnˆn body osassa. T‰m‰ m‰‰ritt‰‰ mit‰ tietoja haetaan' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'request_body'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Miss‰ j‰rjestyksess‰ samannimiset haut suoritetaan. Oletus arvo on 1.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'order'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Onko konfiguratio viel‰ aktiinen. 1=aktiivinen, 0=ei aktiivinen' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'active'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Onko kyseess‰ ilmainen tilastomateriaali. 1=ilmainen, 0=maksullinen.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'free'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Konfiguraation versio lis‰tieto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'version'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Konfiguraation kuvaus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config', @level2type=N'COLUMN',@level2name=N'description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Automattinen kentt‰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Konfiguraatiolle annettu selvent‰v‰ nimi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kohdetaulun tietokanta scheman nimi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'destination_schema_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kohdetaulun tietokanta taulun nimi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'destination_table_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tieto poistetaanko taulu ennen latausta. Mahdollistaa muutokset taulun kentt‰ m‰‰rityksess‰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'drop_table'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL-lis‰m‰‰ritys joka lis‰t‰‰n kiinte‰n URL m‰‰ritykseen' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'relative_URL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'JSON m‰‰ritys joka annetaan pyynnˆn body osassa. T‰m‰ m‰‰ritt‰‰ mit‰ tietoja haetaan' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'request_body'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Miss‰ j‰rjestyksess‰ samannimiset haut suoritetaan. Oletus arvo on 1.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'order'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Onko konfiguratio viel‰ aktiinen. 1=aktiivinen, 0=ei aktiivinen' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'active'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Onko kyseess‰ ilmainen tilastomateriaali. 1=ilmainen, 0=maksullinen.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'free'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Konfiguraation versio lis‰tieto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'version'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Konfiguraation kuvaus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_config_master', @level2type=N'COLUMN',@level2name=N'description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Automattinen kentt‰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_loading_log', @level2type=N'COLUMN',@level2name=N'id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'statfin_config taulun id. Mit‰ konfiguraatiota on k‰ytetty latauksessa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_loading_log', @level2type=N'COLUMN',@level2name=N'koto_config_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kuinka monta rivi‰ on luettu l‰hteest‰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_loading_log', @level2type=N'COLUMN',@level2name=N'rowsRead'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kuinka monta rivi‰ on kirjoittu kohteeseen' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_loading_log', @level2type=N'COLUMN',@level2name=N'rowsCopied'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Latauksen suoritusajankohta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_loading_log', @level2type=N'COLUMN',@level2name=N'timestamp'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Virhetieto, 1=virhe, 0=ei virhett‰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_loading_log', @level2type=N'COLUMN',@level2name=N'error'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Viesti latauksesta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'koto_loading_log', @level2type=N'COLUMN',@level2name=N'message'
GO


