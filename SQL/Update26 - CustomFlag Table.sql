CREATE TABLE [dbo].[CustomFlag](
	[Name] [varchar](10) NOT NULL,
	[FlagNumber] [tinyint] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[CustomFlag] ADD  CONSTRAINT [DF_CustomFlag_FlagNumber]  DEFAULT ((0)) FOR [FlagNumber]
GO