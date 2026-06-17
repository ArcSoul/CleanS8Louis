CREATE TABLE [dbo].[RankingArcaBattle](
	[Name] [varchar](10) NOT NULL,
	[ContributePoint] [int] NOT NULL DEFAULT (0),
	[KillPoint] [int] NOT NULL DEFAULT (0),
	[BootyAmount] [int] NOT NULL DEFAULT (0),
	[Score] [int] NOT NULL DEFAULT (0),
 CONSTRAINT [PK_RankingArcaBattle] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


