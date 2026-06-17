CREATE TABLE [dbo].[CustomAchievementsCount](
	[Name] [varchar](10) NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Count1] [int] NOT NULL,
	[Count2] [int] NOT NULL,
	[Count3] [int] NOT NULL,
	[Count4] [int] NOT NULL,
	[Count5] [int] NOT NULL,
	[Count6] [int] NOT NULL,
	[Count7] [int] NOT NULL,
	[Count8] [int] NOT NULL,
	[Count9] [int] NOT NULL,
	[Count10] [int] NOT NULL,
	[Count11] [int] NOT NULL,
	[Count12] [int] NOT NULL,
	[Count13] [int] NOT NULL,
	[Count14] [int] NOT NULL,
	[Count15] [int] NOT NULL,
	[Count16] [int] NOT NULL,
	[Count17] [int] NOT NULL,
	[Count18] [int] NOT NULL,
	[Count19] [int] NOT NULL,
	[Count20] [int] NOT NULL,
 CONSTRAINT [PK_CustomAchievementsData] PRIMARY KEY CLUSTERED 
(
	[Name] ASC,
	[Type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_CustomAchievementsData_Count1]  DEFAULT ((0)) FOR [Count1]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count11]  DEFAULT ((0)) FOR [Count2]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count21]  DEFAULT ((0)) FOR [Count3]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count31]  DEFAULT ((0)) FOR [Count4]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count31_1]  DEFAULT ((0)) FOR [Count5]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count32]  DEFAULT ((0)) FOR [Count6]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count33]  DEFAULT ((0)) FOR [Count7]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count34]  DEFAULT ((0)) FOR [Count8]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count35]  DEFAULT ((0)) FOR [Count9]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count36]  DEFAULT ((0)) FOR [Count10]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count37]  DEFAULT ((0)) FOR [Count11]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count38]  DEFAULT ((0)) FOR [Count12]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count39]  DEFAULT ((0)) FOR [Count13]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count310]  DEFAULT ((0)) FOR [Count14]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count311]  DEFAULT ((0)) FOR [Count15]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count312]  DEFAULT ((0)) FOR [Count16]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count313]  DEFAULT ((0)) FOR [Count17]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count314]  DEFAULT ((0)) FOR [Count18]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count315]  DEFAULT ((0)) FOR [Count19]
GO

ALTER TABLE [dbo].[CustomAchievementsCount] ADD  CONSTRAINT [DF_Table_1_Count316]  DEFAULT ((0)) FOR [Count20]
GO


