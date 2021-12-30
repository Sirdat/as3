USE MASTER
GO

IF EXISTS (SELECT * FROM sys.databases WHERE NAME = 'EX4')
DROP DATABASE EX4
GO

CREATE DATABASE EX4
GO

USE EX4
GO

CREATE TABLE Test(
	ID INT PRIMARY KEY IDENTITY(1,1),
	Name NVARCHAR(20) NOT NULL,
	BirthDate  DATETIME NOT NULL,
	Gender Bit,
	IsDeleteFlag BIT,
)
GO
EXEC sp_addextendedproperty
	'Gender'
	,'0:Male,1:Female,NULL:Unknown'
	,'SCHEMA','dbo'
	,'TABLE','Test'
	,'COLUMN','Gender'

EXEC sp_addextendedproperty
	'IsDeleteFlag'
	,'0:Active,1:Deleted'
	,'SCHEMA','dbo'
	,'TABLE','Test'
	,'COLUMN','IsDeleteFlag'