Declare @Max int =121
Select @Max As Number
Set @Max+=121 Select @Max As Number2


Declare @Total int =0
Select @Total =(Select Sum ([Count]) From [Transaction])
Select @Total As Number3

Select Sum([Count])*100/@Total As Precent
From [Transaction]
Group By [Transaction].ProductID
Order By Precent DEsc

Declare @Counter int =0 Create Table #MyTable(Number int)
While (@Counter<21)
Begin
Insert #MyTable
Select @Counter Set @Counter+=1
End
Drop Table #MyTable

