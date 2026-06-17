CREATE Procedure [dbo].[WZ_SetPlayerKiller] 
@AccountKiller varchar(10),
@NameKiller varchar(10),
@AccountDead varchar(10),
@NameDead varchar(10),
@MapNumber int
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

UPDATE Character SET Kills=Kills+1 WHERE Name=@NameKiller
UPDATE Character SET Deads=Deads+1 WHERE Name=@NameDead

SET NOCOUNT OFF
SET XACT_ABORT OFF

END