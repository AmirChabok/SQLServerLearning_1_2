Use master;
Go
Create DataBase Testdb

USE Testdb;
GO
IF (@@SERVERNAME='VIVO121\SQLFULL')
begin
BACKUP DATABASE Testdb
TO DISK = 'd:\AdventureWorks2012.Bak'
   WITH FORMAT,
      MEDIANAME = 'Z_SQLServerBackups',
      NAME = 'Full Backup of Testdb';
End

GO


IF (@@SERVERNAME='VIVO121\SQLFULL')
begin
   RESTORE DATABASE Testdb
   FROM DISK = 'd:\AdventureWorks2012.Bak'
   With Replace
End