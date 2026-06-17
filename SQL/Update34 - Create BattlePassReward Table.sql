CREATE TABLE [dbo].[CustomBattlePassReward](
	[Name] [varchar](10) NOT NULL,
	[BattleType] [tinyint] NOT NULL,
	[BattleSlot] [tinyint] NOT NULL,
 CONSTRAINT [PK_CustomBattlePassReward] PRIMARY KEY CLUSTERED 
(
	[Name] ASC,
	[BattleType] ASC,
	[BattleSlot] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]