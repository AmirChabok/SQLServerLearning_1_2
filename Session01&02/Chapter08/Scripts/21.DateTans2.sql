Create Table #T
(
	MonthNum Bigint
)

Insert #T Values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12)

--Select * From #T


Select * From (
Select Sum([Count]*Price)As Total,Month([Transaction].DueDate) As MonthNumber
From [Transaction],Market
Where MarketID=Market.ID AND
MarketTypeID=1 AND ProductID=1
Group By Month([Transaction].DueDate)) As Temp 
Right Outer Join #T On Temp.MonthNumber=#T.MonthNum
Drop Table #T