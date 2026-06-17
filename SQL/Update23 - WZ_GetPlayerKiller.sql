CREATE Procedure [dbo].[WZ_GetPlayerKiller]
@Account varchar(10),
@Name varchar(10)
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

DECLARE @Kills int
DECLARE @Deaths int

SELECT @Kills=Kills,@Deaths=Deads FROM Character WHERE AccountID=@Account AND Name=@Name

SELECT @Kills AS Kills,@Deaths AS Deaths

SET NOCOUNT OFF
SET XACT_ABORT OFF

END