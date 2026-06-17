CREATE TABLE [dbo].[CustomLuckyWheel](
	[AccountID] [varchar](10) NOT NULL,
	[WheelType] [tinyint] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_CustomLuckyWheel] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[WheelType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


