CREATE TABLE [dbo].[CustomBattlePassData](
	[Name] [varchar](10) NOT NULL,
	[StarCount] [int] NOT NULL,
	[StarUsed] [int] NOT NULL,
 CONSTRAINT [PK_CustomBattlePassData] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[CustomBattlePassData] ADD  CONSTRAINT [DF_CustomBattlePassData_StarCount]  DEFAULT ((0)) FOR [StarCount]
GO

ALTER TABLE [dbo].[CustomBattlePassData] ADD  CONSTRAINT [DF_CustomBattlePassData_StarUsed]  DEFAULT ((0)) FOR [StarUsed]
GO

