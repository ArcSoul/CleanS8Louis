CREATE TABLE [dbo].[MarketPlace](
	[MarketID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [varchar](10) NOT NULL,
	[ItemCode] [varbinary](16) NULL,
	[ItemGroup] [tinyint] NOT NULL,
	[ItemValue] [int] NOT NULL,
	[ItemSponsored] [tinyint] NOT NULL,
	[ItemSold] [tinyint] NOT NULL,
	[IncludeDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_MarketPlace] PRIMARY KEY CLUSTERED 
(
	[MarketID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[MarketPlace] ADD  CONSTRAINT [DF_MarketPlace_ItemCategory]  DEFAULT ((0)) FOR [ItemGroup]
GO

ALTER TABLE [dbo].[MarketPlace] ADD  CONSTRAINT [DF_MarketPlace_ItemValue]  DEFAULT ((0)) FOR [ItemValue]
GO

ALTER TABLE [dbo].[MarketPlace] ADD  CONSTRAINT [DF_MarketPlace_ItemSponsored]  DEFAULT ((0)) FOR [ItemSponsored]
GO

ALTER TABLE [dbo].[MarketPlace] ADD  CONSTRAINT [DF_MarketPlace_ItemSold]  DEFAULT ((0)) FOR [ItemSold]
GO

ALTER TABLE [dbo].[MarketPlace] ADD  CONSTRAINT [DF_MarketPlace_IncludeDate]  DEFAULT (getdate()) FOR [IncludeDate]
GO


