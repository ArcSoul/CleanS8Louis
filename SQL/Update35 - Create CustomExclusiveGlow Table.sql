CREATE TABLE [dbo].[CustomExclusiveGlow](
	[ItemSerial] [int] NOT NULL,
	[SkinR] [tinyint] NOT NULL,
	[SkinG] [tinyint] NOT NULL,
	[SkinB] [tinyint] NOT NULL,
	[SkinA] [tinyint] NOT NULL,
	[GlowR] [tinyint] NOT NULL,
	[GlowG] [tinyint] NOT NULL,
	[GlowB] [tinyint] NOT NULL,
	[GlowA] [tinyint] NOT NULL,
	[Bright] [tinyint] NOT NULL,
 CONSTRAINT [PK_CustomExclusiveGlow] PRIMARY KEY CLUSTERED 
(
	[ItemSerial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[CustomExclusiveGlow] ADD  CONSTRAINT [DF_CustomExclusiveGlow_SkinR]  DEFAULT ((0)) FOR [SkinR]
GO

ALTER TABLE [dbo].[CustomExclusiveGlow] ADD  CONSTRAINT [DF_CustomExclusiveGlow_SkinG]  DEFAULT ((0)) FOR [SkinG]
GO

ALTER TABLE [dbo].[CustomExclusiveGlow] ADD  CONSTRAINT [DF_CustomExclusiveGlow_SkinB]  DEFAULT ((0)) FOR [SkinB]
GO

ALTER TABLE [dbo].[CustomExclusiveGlow] ADD  CONSTRAINT [DF_CustomExclusiveGlow_SkinA]  DEFAULT ((0)) FOR [SkinA]
GO

ALTER TABLE [dbo].[CustomExclusiveGlow] ADD  CONSTRAINT [DF_CustomExclusiveGlow_GlowR]  DEFAULT ((0)) FOR [GlowR]
GO

ALTER TABLE [dbo].[CustomExclusiveGlow] ADD  CONSTRAINT [DF_CustomExclusiveGlow_GlowG]  DEFAULT ((0)) FOR [GlowG]
GO

ALTER TABLE [dbo].[CustomExclusiveGlow] ADD  CONSTRAINT [DF_CustomExclusiveGlow_GlowB]  DEFAULT ((0)) FOR [GlowB]
GO

ALTER TABLE [dbo].[CustomExclusiveGlow] ADD  CONSTRAINT [DF_CustomExclusiveGlow_GlowA]  DEFAULT ((0)) FOR [GlowA]
GO

ALTER TABLE [dbo].[CustomExclusiveGlow] ADD  CONSTRAINT [DF_CustomExclusiveGlow_Bright]  DEFAULT ((0)) FOR [Bright]
GO


