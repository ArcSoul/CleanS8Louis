CREATE TABLE [dbo].[CustomGiftCode](
	[GiftID] [int] IDENTITY(1,1) NOT NULL,
	[GiftCode] [varchar](10) NOT NULL,
	[ItemIndex] [smallint] NOT NULL,
	[ItemLevel] [smallint] NOT NULL,
	[ItemDurability] [smallint] NOT NULL,
	[ItemSkill] [smallint] NOT NULL,
	[ItemLuck] [smallint] NOT NULL,
	[ItemOption] [smallint] NOT NULL,
	[ItemExcOpt] [smallint] NOT NULL,
	[ItemSetOpt] [smallint] NOT NULL,
	[ItemJoH] [smallint] NOT NULL,
	[ItemOex] [smallint] NOT NULL,
	[ItemSocket1] [smallint] NOT NULL,
	[ItemSocket2] [smallint] NOT NULL,
	[ItemSocket3] [smallint] NOT NULL,
	[ItemSocket4] [smallint] NOT NULL,
	[ItemSocket5] [smallint] NOT NULL,
	[ItemSocketBonus] [smallint] NOT NULL,
	[ItemDuration] [int] NOT NULL,
 CONSTRAINT [PK_CustomGiftCode] PRIMARY KEY CLUSTERED 
(
	[GiftID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


