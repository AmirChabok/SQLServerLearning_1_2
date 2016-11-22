Create Procedure Test2(@ID int)
As
Begin
Select Market.Title,Sum([Transaction].[Count]*[Transaction].Price) As SumPrice
From [Transaction],Market
Where ProductID=@ID And MarketID=Market.ID
Group By MarketID,Market.Title
End

GO
Execute Test2 21