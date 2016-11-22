use Store

Select Market.ID,Market.Title,[Transaction].[Count]*[Transaction].Price
AS Total From [Transaction],Market Where [Transaction].MarketID=Market.ID
And [Transaction].[Count]*[Transaction].Price >500000000