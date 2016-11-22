Create View UnderAvgLine As
Select Product.Title From Product Where ID In
(Select [Transaction].ProductID From [Transaction]
Group By ProductID Having Avg([Count]) <
(Select SUM([Count]) From [Transaction]))