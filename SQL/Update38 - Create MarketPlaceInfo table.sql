CREATE TABLE [dbo].[MarketPlaceInfo](
	[AccountID] [varchar](10) NOT NULL,
	[MarketCoin] [int] NOT NULL,
	[ItemCode] [varbinary](16) NULL,
 CONSTRAINT [PK_MarketPlaceInfo] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[MarketPlaceInfo] ADD  CONSTRAINT [DF_MarketPlaceInfo_MarketCoin]  DEFAULT ((0)) FOR [MarketCoin]
GO


