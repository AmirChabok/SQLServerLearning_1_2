Select * From INFORMATION_SCHEMA.PARAMETERS
--
Select * From INFORMATION_SCHEMA.Tables
--
Select * From INFORMATION_SCHEMA.COLUMNS
--
Select * From INFORMATION_SCHEMA.COLUMNS
Where COLUMN_NAME='Name'
--
Declare @Test Varchar(max)=' '
Select @Test+=' '+COLUMN_NAME+' '+DATA_TYPE
From INFORMATION_SCHEMA.COLUMNS
Where COLUMN_NAME='ID'
Select @Test
--