CREATE Procedure [dbo].[WZ_RankingAll] 
@Account varchar(10),
@Name varchar(10),
@Type int,
@Value1 int,
@Value2 int,
@Value3 int,
@Value4 int
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

IF(@Type = 1)
BEGIN
	Exec WZ_CustomArenaRanking @Account,@Name,@Value1,@Value2,@Value3;
END

IF(@Type = 2)
BEGIN
	Exec WZ_CustomMonsterReward @Account,@Name,@Value1,@Value2,@Value3,@Value4;
END

IF(@Type = 3)
BEGIN
	Exec WZ_RankingBloodCastle @Account,@Name,@Value1;
END

IF(@Type = 4)
BEGIN
	Exec WZ_RankingChaosCastle @Account,@Name,@Value1;
END

IF(@Type = 5)
BEGIN
	Exec WZ_RankingDevilSquare @Account,@Name,@Value1;
END

IF(@Type = 6)
BEGIN
	Exec WZ_RankingIllusionTemple @Account,@Name,@Value1;
END

IF(@Type = 7)
BEGIN
	Exec WZ_TvTRanking @Account,@Name,@Value1,@Value2;
END

IF(@Type = 8)
BEGIN
	Exec WZ_BattleRoyaleRanking @Account,@Name;
END

IF(@Type = 9)
BEGIN
	Exec WZ_RankingPvpChampionship @Account,@Name,@Value1,@Value2,@Value3;
END


SET NOCOUNT OFF
SET XACT_ABORT OFF

END