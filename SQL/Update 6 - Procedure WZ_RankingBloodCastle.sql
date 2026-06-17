CREATE Procedure [dbo].[WZ_RankingBloodCastle] 
@Account varchar(10),
@Name varchar(10),
@Score int
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

IF NOT EXISTS (SELECT Name FROM RankingBloodCastle WHERE Name=@Name)
BEGIN

	 INSERT INTO RankingBloodCastle (Name,Score,Score_semanal) VALUES (@Name,@Score,@Score)

END
ELSE
BEGIN

	UPDATE RankingBloodCastle SET Score=Score+@Score,Score_semanal=Score_semanal+@Score WHERE Name=@Name

END

SET NOCOUNT OFF
SET XACT_ABORT OFF

END
