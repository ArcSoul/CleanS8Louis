CREATE TABLE [dbo].[RankingCastleSiegeGuildPoint](
	[GName] [nvarchar](8) NOT NULL,
	[Point] [int] NOT NULL,
 CONSTRAINT [PK_RankingCastleSiegeGuildPoint] PRIMARY KEY CLUSTERED 
(
	[GName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[RankingCastleSiegeGuildPoint] ADD  CONSTRAINT [DF_RankingCastleSiegePoint]  DEFAULT ((0)) FOR [Point]
GO


