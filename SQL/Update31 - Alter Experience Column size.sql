ALTER TABLE character DROP CONSTRAINT DF_Character_Experience

ALTER table dbo.character alter column Experience bigint;

ALTER TABLE character ADD CONSTRAINT DF_Character_Experience DEFAULT(0) FOR Experience
