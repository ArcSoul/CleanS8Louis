CREATE TABLE [dbo].[CustomAchievementsLevel](
	[Name] [varchar](10) NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[Level4] [smallint] NOT NULL,
	[Level5] [smallint] NOT NULL,
	[Level6] [smallint] NOT NULL,
	[Level7] [smallint] NOT NULL,
	[Level8] [smallint] NOT NULL,
	[Level9] [smallint] NOT NULL,
	[Level10] [smallint] NOT NULL,
	[Level11] [smallint] NOT NULL,
	[Level12] [smallint] NOT NULL,
	[Level13] [smallint] NOT NULL,
	[Level14] [smallint] NOT NULL,
	[Level15] [smallint] NOT NULL,
	[Level16] [smallint] NOT NULL,
	[Level17] [smallint] NOT NULL,
	[Level18] [smallint] NOT NULL,
	[Level19] [smallint] NOT NULL,
	[Level20] [smallint] NOT NULL,
 CONSTRAINT [PK_CustomAchievementsLevel] PRIMARY KEY CLUSTERED 
(
	[Name] ASC,
	[Type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count1]  DEFAULT ((0)) FOR [Level1]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count2]  DEFAULT ((0)) FOR [Level2]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count3]  DEFAULT ((0)) FOR [Level3]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count4]  DEFAULT ((0)) FOR [Level4]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count5]  DEFAULT ((0)) FOR [Level5]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count6]  DEFAULT ((0)) FOR [Level6]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count7]  DEFAULT ((0)) FOR [Level7]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count8]  DEFAULT ((0)) FOR [Level8]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count9]  DEFAULT ((0)) FOR [Level9]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count10]  DEFAULT ((0)) FOR [Level10]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count11_1]  DEFAULT ((0)) FOR [Level11]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count12]  DEFAULT ((0)) FOR [Level12]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count13]  DEFAULT ((0)) FOR [Level13]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count14]  DEFAULT ((0)) FOR [Level14]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count15]  DEFAULT ((0)) FOR [Level15]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count16]  DEFAULT ((0)) FOR [Level16]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count17]  DEFAULT ((0)) FOR [Level17]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count18]  DEFAULT ((0)) FOR [Level18]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count19]  DEFAULT ((0)) FOR [Level19]
GO

ALTER TABLE [dbo].[CustomAchievementsLevel] ADD  CONSTRAINT [DF_Table_1_Count20]  DEFAULT ((0)) FOR [Level20]
GO


