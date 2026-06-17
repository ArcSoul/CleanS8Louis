CREATE TABLE [dbo].[RankingCastleSiegeTime](
	[Name] [nvarchar](10) NOT NULL,
	[GName] [nvarchar](8) NOT NULL,
	[SwitchTime] [int] NOT NULL,
	[CrownTime] [int] NOT NULL,
 CONSTRAINT [PK_RankingCastleSiegeTime] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[RankingCastleSiegeTime] ADD  CONSTRAINT [DF_RankingCastleSiegeSwitchTime]  DEFAULT ((0)) FOR [SwitchTime]
GO

ALTER TABLE [dbo].[RankingCastleSiegeTime] ADD  CONSTRAINT [DF_RankingCastleSiegeCrownTime]  DEFAULT ((0)) FOR [CrownTime]
GO


