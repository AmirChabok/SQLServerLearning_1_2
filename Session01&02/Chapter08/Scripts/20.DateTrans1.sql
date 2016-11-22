Select Sum([Count]*Price) AS Total ,Month([Transaction].DueDate) As MonthNumber
From [Transaction],Market
Where MarketID=Market.ID AND
MarketTypeID=1 AND ProductID=1
Group By Month([Transaction].DueDate)