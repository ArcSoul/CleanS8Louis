CREATE TABLE [dbo].[CustomItemBank](
	[AccountID] [varchar](10) NOT NULL,
	[ItemIndex] [int] NOT NULL,
	[ItemLevel] [smallint] NOT NULL,
	[ItemCount] [int] NOT NULL,
 CONSTRAINT [PK_CustomItemBank] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ItemIndex] ASC,
	[ItemLevel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


