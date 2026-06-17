CREATE TABLE [dbo].[CustomGuildReign](
	[Map] [smallint] NOT NULL,
	[Guild] [varchar](8) NOT NULL,
	[Mark] [varbinary](32) NULL,
	[LastConquer] [smalldatetime] NOT NULL,
	[ConquerTime2] [int] NOT NULL,
	[ConquerCount] [int] NOT NULL,
 CONSTRAINT [PK_CustomGuildDomain] PRIMARY KEY CLUSTERED 
(
	[Map] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[CustomGuildReign] ADD  CONSTRAINT [DF_CustomGuildDomain_DomainDate]  DEFAULT (getdate()) FOR [LastConquer]
GO

ALTER TABLE [dbo].[CustomGuildReign] ADD  CONSTRAINT [DF_CustomGuildReign_ConquerTime2]  DEFAULT ((0)) FOR [ConquerTime2]
GO

ALTER TABLE [dbo].[CustomGuildReign] ADD  CONSTRAINT [DF_CustomGuildDomain_ConquestCount]  DEFAULT ((0)) FOR [ConquerCount]
GO


