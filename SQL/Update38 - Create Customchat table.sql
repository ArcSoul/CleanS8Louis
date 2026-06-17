CREATE TABLE [dbo].[CustomChat](
	[chat_id] [int] IDENTITY(1,1) NOT NULL,
	[type] [smallint] NOT NULL,
	[name] [varchar](10) NOT NULL,
	[message] [varchar](200) NOT NULL,
	[delivered] [tinyint] NOT NULL,
 CONSTRAINT [PK_CustomChat] PRIMARY KEY CLUSTERED 
(
	[chat_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[CustomChat] ADD  CONSTRAINT [DF_CustomChat_type_1]  DEFAULT ((0)) FOR [type]
GO

ALTER TABLE [dbo].[CustomChat] ADD  CONSTRAINT [DF_CustomChat_type]  DEFAULT ((0)) FOR [name]
GO

ALTER TABLE [dbo].[CustomChat] ADD  CONSTRAINT [DF_CustomChat_delivery]  DEFAULT ((0)) FOR [delivered]
GO


