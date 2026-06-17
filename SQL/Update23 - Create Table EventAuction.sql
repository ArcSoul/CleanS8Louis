CREATE TABLE [dbo].[EventAuction](
	[AuctionIndex] [int] NOT NULL,
	[CoinType] [smallint] NOT NULL DEFAULT(0),
	[CurrentBid] [int] NOT NULL DEFAULT(0),
	[CurrentAccount] [varchar](10) NOT NULL,
	[CurrentName] [varchar](10) NOT NULL,
	[Ended] [smallint] NOT NULL DEFAULT(0),
 CONSTRAINT [PK_EventAuction] PRIMARY KEY CLUSTERED 
(
	[AuctionIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]