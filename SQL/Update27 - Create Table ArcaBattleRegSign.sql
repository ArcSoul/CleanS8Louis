CREATE TABLE [dbo].[ArcaBattleRegSign](
	[GuildName] [varchar](8) NOT NULL,
	[MarkCount] [int] NULL,
	[RegDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_ArcaBattleGuildEmblem] PRIMARY KEY CLUSTERED 
(
	[GuildName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ArcaBattleRegSign] ADD  CONSTRAINT [DF_ArcaBattleRegSign_RegDate]  DEFAULT (getdate()) FOR [RegDate]
GO


