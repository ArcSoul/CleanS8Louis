CREATE TABLE [dbo].[CustomAttackOffline](
	[AccountID] [varchar](10) NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[IP] [varchar](15) NOT NULL,
	[ServerName] [varchar](50) NULL,
 CONSTRAINT [PK_CustomAttackOffline] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

