CREATE TABLE [dbo].[RankingCastleSiegeKills](
	[Name] [nvarchar](10) NOT NULL,
	[GName] [nvarchar](8) NOT NULL,
	[Kills] [int] NOT NULL,
	[Deaths] [int] NOT NULL,
 CONSTRAINT [PK_RankingCastleSiegeKills] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[RankingCastleSiegeKills] ADD  CONSTRAINT [DF_RankingCastleSiegeKills_Kills]  DEFAULT ((0)) FOR [Kills]
GO

ALTER TABLE [dbo].[RankingCastleSiegeKills] ADD  CONSTRAINT [DF_RankingCastleSiegeKills_Deaths]  DEFAULT ((0)) FOR [Deaths]
GO


