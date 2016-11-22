Select *,Day(DueDate) As DayNumber
From [Transaction],Market
Where MarketID=Market.ID And
ProductID=1 And
Month(DueDate)=5