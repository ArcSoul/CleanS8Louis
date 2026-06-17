CREATE TABLE [dbo].[Marry](
	[Character] [varchar](15) NOT NULL,
	[MarryCharacter] [varchar](15) NOT NULL,
	[MarriedOn] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Marry] ADD  CONSTRAINT [DF_Marry_MarriedOn]  DEFAULT (getdate()) FOR [MarriedOn]
GO


CREATE Procedure [dbo].[WZ_SetMarryInfo] @name varchar(10), @MarryCharacter varchar(10)
AS
BEGIN


SET NOCOUNT ON
SET XACT_ABORT ON


INSERT INTO [dbo].[Marry] (Character, MarryCharacter) VALUES  (@name , @MarryCharacter);


SET NOCOUNT OFF
SET XACT_ABORT OFF


END

GO

CREATE Procedure [dbo].[WZ_SetDivorceInfo] @name varchar(10), @MarryCharacter varchar(10)
AS
BEGIN


SET NOCOUNT ON
SET XACT_ABORT ON


DELETE FROM [dbo].[Marry] where Character = @name OR MarryCharacter = @MarryCharacter


SET NOCOUNT OFF
SET XACT_ABORT OFF

END

GO


Create Procedure [dbo].[WZ_GetMarryInfo] @name varchar(10), @MarryCharacter varchar(10)
AS
BEGIN


SET NOCOUNT ON
SET XACT_ABORT ON


DECLARE @countYou int
DECLARE @countHim int


DECLARE @Startdate datetime2 = '2016-01-01 00:00:00.0000000';
DECLARE @marriedOnEnd datetime2
DECLARE @marriedOn int


DECLARE @nameGet1 varchar(10)
DECLARE @nameGet2 varchar(10)
/*DECLARE @marriedOn int*/
SELECT @countYou=Count(*) FROM [dbo].[Marry] WHERE Character = @name OR MarryCharacter = @name /*You are already married*/
SELECT @countHim=Count(*) FROM [dbo].[Marry] WHERE Character = @MarryCharacter OR MarryCharacter = @MarryCharacter /*He/She is already married*/
SELECT @nameGet1=MarryCharacter FROM [dbo].[Marry] WHERE Character = @name
SELECT @nameGet2=Character FROM [dbo].[Marry] WHERE MarryCharacter = @name


SELECT @marriedOnEnd=MarriedOn FROM [dbo].[Marry] WHERE Character = @name OR MarryCharacter = @name /*Married date*/
SELECT @marriedOn=DATEDIFF(SECOND, @Startdate, @marriedOnEnd)


SELECT @countYou AS CountYou, @countHim AS CountHim, @marriedOn AS MarriedOn, @nameGet1 AS NameGet1, @nameGet2 AS NameGet2


SET NOCOUNT OFF
SET XACT_ABORT OFF


END 

GO



