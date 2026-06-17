CREATE Procedure [dbo].[WZ_RankingPvpChampionship] 
@Account varchar(10),
@Name varchar(10),
@Wins int,
@Kills int,
@Deaths int
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

IF NOT EXISTS (SELECT Name FROM RankingPvpChampionship WHERE Name=@Name)
BEGIN

	 INSERT INTO RankingPvpChampionship (Name,Wins,Kills,Deaths) VALUES (@Name,@Wins,@Kills,@Deaths)

END
ELSE
BEGIN

	UPDATE RankingPvpChampionship SET Wins=Wins+@Wins,Kills=Kills+@Kills,Deaths=Deaths+@Deaths WHERE Name=@Name

END

SET NOCOUNT OFF
SET XACT_ABORT OFF

END
