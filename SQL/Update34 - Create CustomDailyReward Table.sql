CREATE TABLE [dbo].[CustomDailyReward](
	[AccountID] [varchar](10) NOT NULL,
	[Day] [smallint] NOT NULL,
	[Month] [smallint] NOT NULL,
 CONSTRAINT [PK_CustomDailyReward] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[Day] ASC,
	[Month] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
