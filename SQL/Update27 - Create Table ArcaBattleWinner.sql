CREATE TABLE [dbo].[ArcaBattleWinner](
	[Guild] [varchar](8) NOT NULL,
	[ObeliskGroup] [smallint] NULL,
	[ObeliskAttribute] [smallint] NULL,
 CONSTRAINT [PK_ArcaBattleWinner] PRIMARY KEY CLUSTERED 
(
	[Guild] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

