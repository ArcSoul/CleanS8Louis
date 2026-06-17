CREATE TABLE [dbo].[GremoryCase](
	[AccountID] [varchar](10) NOT NULL,
	[Name] [varchar](10) NULL,
	[StorageType] [int] NOT NULL,
	[RewardSource] [int] NOT NULL,
	[AuthCode] [int] NOT NULL DEFAULT(0),
	[ItemGUID] [int] NOT NULL DEFAULT(0),
	[ItemIndex] [smallint] NOT NULL DEFAULT(0),
	[ItemLevel] [smallint] NOT NULL DEFAULT(0),
	[ItemDurability] [smallint] NOT NULL DEFAULT(0),
	[ItemSkill] [smallint] NOT NULL DEFAULT(0),
	[ItemLuck] [smallint] NOT NULL DEFAULT(0),
	[ItemOption] [smallint] NOT NULL DEFAULT(0),
	[ItemExcOpt] [smallint] NOT NULL DEFAULT(0),
	[ItemSetOpt] [smallint] NOT NULL DEFAULT(0),
	[ItemJoH] [smallint] NOT NULL DEFAULT(0),
	[ItemOex] [smallint] NOT NULL DEFAULT(0),
	[ItemSocket1] [smallint] NOT NULL DEFAULT(0),
	[ItemSocket2] [smallint] NOT NULL DEFAULT(0),
	[ItemSocket3] [smallint] NOT NULL DEFAULT(0),
	[ItemSocket4] [smallint] NOT NULL DEFAULT(0),
	[ItemSocket5] [smallint] NOT NULL DEFAULT(0),
	[ItemDuration] [int] NOT NULL DEFAULT(0),
	[ReceiveDate] [bigint] NOT NULL,
	[ExpireDate] [bigint] NOT NULL
) ON [PRIMARY]
GO

CREATE PROCEDURE [dbo].[WZ_GremoryCase_AddItem]
	@AccountID varchar(10),
	@Name	varchar(10),
	@StorageType int,
	@RewardSource int,
	@ItemID int,
	@ItemLevel int,
	@ItemDurability int,
	@ItemOp1 int,
	@ItemOp2 int,
	@ItemOp3 int,
	@ItemExcOption int,
	@ItemSetOption int,
	@ItemJoH int,
	@ItemOeX int,
	@ItemSocket1 int,
	@ItemSocket2 int,
	@ItemSocket3 int,
	@ItemSocket4 int,
	@ItemSocket5 int,
	@ItemDuration int,
	@ReceiveDate bigint,
	@ExpireDate bigint
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @ItemsInStorage int
	SET @ItemsInStorage = (SELECT COUNT(*) FROM GremoryCase WHERE AccountID = @AccountID AND ((Name = @Name AND StorageType = 2) OR StorageType = 1))

	IF (@ItemsInStorage >= 50)
	BEGIN
		WHILE (@ItemsInStorage >= 50)
		BEGIN
			DELETE FROM GremoryCase WHERE AccountID = @AccountID AND ((Name = @Name AND StorageType = 2) OR StorageType = 1) AND ReceiveDate = 
			(SELECT MIN(ReceiveDate) FROM GremoryCase WHERE AccountID = @AccountID AND ((Name = @Name AND StorageType = 2) OR StorageType = 1))
			SET @ItemsInStorage = @ItemsInStorage - 1
		END
	END

	DECLARE @FreeItemGUID int
	SET @FreeItemGUID = 0

	WHILE (1 = 1)
	BEGIN
		IF NOT EXISTS (SELECT * FROM GremoryCase WHERE AccountID = @AccountID AND ((Name = @Name AND StorageType = 2) OR StorageType = 1) AND ItemGUID = @FreeItemGUID)
		BEGIN
			BREAK
		END
		SET @FreeItemGUID = @FreeItemGUID + 1
	END

	DECLARE @FreeAuthCode int
	SET @FreeAuthCode = 0

	WHILE (1 = 1)
	BEGIN
		SET @FreeAuthCode = ROUND(((2000000000 - 1 -1) * RAND() + 1), 0)
		IF NOT EXISTS (SELECT * FROM GremoryCase WHERE AuthCode = @FreeAuthCode)
		BEGIN
			BREAK
		END
	END

	INSERT INTO GremoryCase (AccountID, Name, StorageType, RewardSource, ItemGUID, AuthCode, ItemIndex, ItemLevel, ItemDurability, ItemSkill, ItemLuck, ItemOption, ItemExcOpt, ItemSetOpt, ItemJoH, ItemOex, ItemSocket1, ItemSocket2, ItemSocket3, ItemSocket4, ItemSocket5, ItemDuration, ReceiveDate, ExpireDate) VALUES
	(@AccountID, @Name, @StorageType, @RewardSource, @FreeItemGUID, @FreeAuthCode, @ItemID, @ItemLevel, @ItemDurability, @ItemOp1, @ItemOp2, @ItemOp3, @ItemExcOption, @ItemSetOption, @ItemJoH, @ItemOeX, @ItemSocket1, @ItemSocket2, @ItemSocket3, @ItemSocket4, @ItemSocket5, @ItemDuration, @ReceiveDate, @ExpireDate)

	SELECT @FreeItemGUID AS ItemGUID, @FreeAuthCode AS AuthCode
END

GO
