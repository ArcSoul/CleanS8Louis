CREATE TABLE [dbo].[RankingGuildReign](
	[Guild] [varchar](8) NOT NULL,
	[Map] [smallint] NOT NULL,
	[ConquerCount] [int] NOT NULL,
 CONSTRAINT [PK_RankingGuildReign] PRIMARY KEY CLUSTERED 
(
	[Guild] ASC,
	[Map] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[RankingGuildReign] ADD  DEFAULT ((0)) FOR [Map]
GO

ALTER TABLE [dbo].[RankingGuildReign] ADD  DEFAULT ((0)) FOR [ConquerCount]
GO


