CREATE TABLE [dbo].[CustomAchievementsUser](
	[Name] [varchar](10) NOT NULL,
	[AchievementsPoints] [smallint] NOT NULL,
	[IncHP] [smallint] NOT NULL,
	[IncExperienceRate] [smallint] NOT NULL,
	[IncDefenseBase] [smallint] NOT NULL,
	[IncFullReflectRate] [smallint] NOT NULL,
	[IncCriticalDamageRate] [smallint] NOT NULL,
	[IncExcellentDamageRate] [smallint] NOT NULL,
	[IncDoubleDamageRate] [smallint] NOT NULL,
	[IncTripleDamageRate] [smallint] NOT NULL,
	[IncIgnoreDefenseRate] [smallint] NOT NULL,
	[ResistCriticalDamageRate] [smallint] NOT NULL,
	[ResistExcellentDamageRate] [smallint] NOT NULL,
	[ResistDoubleDamageRate] [smallint] NOT NULL,
	[ResistTripleDamageRate] [smallint] NOT NULL,
	[ResistIgnoreDefenseRate] [smallint] NOT NULL,
	[IncWeaponDurabilityRate] [smallint] NOT NULL,
	[IncArmorDurabilityRate] [smallint] NOT NULL,
	[IncGuardianDurabilityRate] [smallint] NOT NULL,
	[IncOffensiveFullHpRestoreRate] [smallint] NOT NULL,
	[IncDefensiveFullHpRestoreRate1] [smallint] NOT NULL,
	[ResistStunRate] [smallint] NOT NULL,
 CONSTRAINT [PK_CustomAchievements] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_ResistCriticalDamageRate1_4]  DEFAULT ((0)) FOR [AchievementsPoints]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_CustomAchievements_IncHP]  DEFAULT ((0)) FOR [IncHP]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncHP1]  DEFAULT ((0)) FOR [IncExperienceRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncHP1_1]  DEFAULT ((0)) FOR [IncDefenseBase]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncHP1_2]  DEFAULT ((0)) FOR [IncFullReflectRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncHP1_3]  DEFAULT ((0)) FOR [IncCriticalDamageRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncHP1_4]  DEFAULT ((0)) FOR [IncExcellentDamageRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncHP1_5]  DEFAULT ((0)) FOR [IncDoubleDamageRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncHP1_6]  DEFAULT ((0)) FOR [IncTripleDamageRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncHP1_7]  DEFAULT ((0)) FOR [IncIgnoreDefenseRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncIgnoreDefenseRate1]  DEFAULT ((0)) FOR [ResistCriticalDamageRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_ResistCriticalDamageRate1]  DEFAULT ((0)) FOR [ResistExcellentDamageRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_ResistCriticalDamageRate1_1]  DEFAULT ((0)) FOR [ResistDoubleDamageRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_ResistCriticalDamageRate1_2]  DEFAULT ((0)) FOR [ResistTripleDamageRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_ResistCriticalDamageRate1_3]  DEFAULT ((0)) FOR [ResistIgnoreDefenseRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_ResistCriticalDamageRate1_5]  DEFAULT ((0)) FOR [IncWeaponDurabilityRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncreaseWeaponDurabilityRate1]  DEFAULT ((0)) FOR [IncArmorDurabilityRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncWeaponDurabilityRate1]  DEFAULT ((0)) FOR [IncGuardianDurabilityRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncGuardianDurabilityRate1]  DEFAULT ((0)) FOR [IncOffensiveFullHpRestoreRate]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncFullHpRestoreRate1]  DEFAULT ((0)) FOR [IncDefensiveFullHpRestoreRate1]
GO

ALTER TABLE [dbo].[CustomAchievementsUser] ADD  CONSTRAINT [DF_Table_1_IncDefensiveFullHpRestoreRate11]  DEFAULT ((0)) FOR [ResistStunRate]
GO


