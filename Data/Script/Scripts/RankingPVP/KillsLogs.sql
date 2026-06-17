/****** Object:  Table [dbo].[KillerLog]    Script Date: 03/06/2026 13:36:09 ******/
IF OBJECT_ID('dbo.KillerLog', 'U') IS NOT NULL
    DROP TABLE dbo.KillerLog;

GO
SET ANSI_NULLS ON;

GO
SET QUOTED_IDENTIFIER ON;

GO
SET ANSI_PADDING ON;

GO
CREATE TABLE [dbo].[KillerLog] (
    [ID]         INT          IDENTITY (1, 1) NOT NULL,
    [VictimName] VARCHAR (10) NOT NULL,
    [KillerName] VARCHAR (10) NOT NULL,
    [Date]       DATETIME     NOT NULL,
    [MapNumber]  INT          NOT NULL,
    [MapX]       INT          NOT NULL,
    [MapY]       INT          NOT NULL,
    CONSTRAINT [PK_KillerLog_ID] PRIMARY KEY CLUSTERED ([ID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];

GO
SET ANSI_PADDING OFF;

GO
ALTER TABLE [dbo].[KillerLog]
    ADD CONSTRAINT [DF_KillerLog_Date] DEFAULT (getdate()) FOR [Date];

GO
/****** Object:  Table [dbo].[PvP_KillLog]    Script Date: 04/06/2026 0:36:59 ******/
IF OBJECT_ID('dbo.PvP_KillLog', 'U') IS NOT NULL
    DROP TABLE [dbo].[PvP_KillLog];

GO
SET ANSI_NULLS ON;

GO
SET QUOTED_IDENTIFIER ON;

GO
SET ANSI_PADDING ON;

GO
CREATE TABLE [dbo].[PvP_KillLog] (
    [ID]         INT          IDENTITY (1, 1) NOT NULL,
    [KillerName] VARCHAR (12) NOT NULL,
    [VictimName] VARCHAR (12) NOT NULL,
    [MapName]    VARCHAR (50) NULL,
    [Date]       DATETIME     NULL,
    CONSTRAINT [PK_PvP_KillLog_ID] PRIMARY KEY CLUSTERED ([ID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];

GO
SET ANSI_PADDING OFF;

GO
ALTER TABLE [dbo].[PvP_KillLog]
    ADD CONSTRAINT [DF_PvP_KillLog_Date] DEFAULT (getdate()) FOR [Date];

GO
/****** Object:  Table [dbo].[PvP_LogControl]    Script Date: 04/06/2026 0:39:15 ******/
IF OBJECT_ID('dbo.PvP_LogControl', 'U') IS NOT NULL
    DROP TABLE [dbo].[PvP_LogControl];

GO
SET ANSI_NULLS ON;

GO
SET QUOTED_IDENTIFIER ON;

GO
CREATE TABLE [dbo].[PvP_LogControl] (
    [LastReset] DATETIME NULL
) ON [PRIMARY];

GO
/****** Object:  Table [dbo].[PvP_Ranking]    Script Date: 04/06/2026 0:39:28 ******/
IF OBJECT_ID('dbo.PvP_Ranking', 'U') IS NOT NULL
    DROP TABLE [dbo].[PvP_Ranking];

GO
SET ANSI_NULLS ON;

GO
SET QUOTED_IDENTIFIER ON;

GO
SET ANSI_PADDING ON;

GO
CREATE TABLE [dbo].[PvP_Ranking] (
    [Name]   VARCHAR (12) NOT NULL,
    [Kills]  INT          NULL,
    [Deaths] INT          NULL,
    CONSTRAINT [PK_PvP_Ranking_Name] PRIMARY KEY CLUSTERED ([Name] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];

GO
SET ANSI_PADDING OFF;

GO
ALTER TABLE [dbo].[PvP_Ranking]
    ADD CONSTRAINT [DF_PvP_Ranking_Kills] DEFAULT ((0)) FOR [Kills];

GO
ALTER TABLE [dbo].[PvP_Ranking]
    ADD CONSTRAINT [DF_PvP_Ranking_Deaths] DEFAULT ((0)) FOR [Deaths];

GO
/****** Object:  StoredProcedure [dbo].[WZ_PvP_AddKill]    Script Date: 04/06/2026 0:31:57 ******/
IF OBJECT_ID('dbo.WZ_PvP_AddKill', 'P') IS NOT NULL
    BEGIN
        DROP PROCEDURE [dbo].[WZ_PvP_AddKill];
    END

GO
SET ANSI_NULLS ON;

GO
SET QUOTED_IDENTIFIER ON;

GO
CREATE PROCEDURE [dbo].[WZ_PvP_AddKill]
@KillerName VARCHAR (12), @VictimName VARCHAR (12), @MapName VARCHAR (50)
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1
               FROM   [dbo].[PvP_LogControl]
               WHERE  DATEDIFF(HOUR, LastReset, GETDATE()) >= 12)
        BEGIN
            TRUNCATE TABLE [dbo].[PvP_KillLog];
            UPDATE [dbo].[PvP_LogControl]
            SET    LastReset = GETDATE();
        END
    IF NOT EXISTS (SELECT 1
                   FROM   PvP_Ranking
                   WHERE  Name = @KillerName)
        INSERT  INTO PvP_Ranking (Name, Kills, Deaths)
        VALUES                  (@KillerName, 1, 0);
    ELSE
        UPDATE PvP_Ranking
        SET    Kills = Kills + 1
        WHERE  Name = @KillerName;
    IF NOT EXISTS (SELECT 1
                   FROM   PvP_Ranking
                   WHERE  Name = @VictimName)
        INSERT  INTO PvP_Ranking (Name, Kills, Deaths)
        VALUES                  (@VictimName, 0, 1);
    ELSE
        UPDATE PvP_Ranking
        SET    Deaths = Deaths + 1
        WHERE  Name = @VictimName;
    INSERT  INTO [dbo].[PvP_KillLog] (KillerName, VictimName, MapName)
    VALUES                          (@KillerName, @VictimName, @MapName);
    SELECT Kills
    FROM   PvP_Ranking
    WHERE  Name = @KillerName;
END

