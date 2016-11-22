Use Store
Select * ,(Select 121) AS Total From Product
--= Select * From Product
Select * From (Select 121 As [First])As [Table]

Select * From Product
Where ID=(Select 1)