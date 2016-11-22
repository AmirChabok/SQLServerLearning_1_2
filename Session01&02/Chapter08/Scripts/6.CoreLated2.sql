Use Store
Select Max (Sood) As SoodTable
From (Select
(Select Max([Count]*Price)
From [Transaction],Market
Where [Transaction].MarketID=Market.ID
And MarketID=2)
-
(Select Max([Count]*Price)
From [Transaction],Market
Where [Transaction].MarketID=Market.ID
And MarketID=1)As Sood
From Product) As TotalResult