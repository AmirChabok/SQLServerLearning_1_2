Create Function CalacWareInRange(@Min int,@Max int)
Returns Table
As 
Return
(
  Select ProductID
  From [Transaction],Market
  Where [Count] Between @Min And @Max And
  MarketID=Market.ID And MarketTypeID=1
)

Go 
Create Function CalcSumOfWareSell(@Min2 int,@Max2 int)
Returns Table
As
Return
(
 Select Product.Title ,Sum([Count]*Price)As Total
 From [Transaction],Product,Market
 Where ProductID=Product.ID And -- Shart Etesale 2 Jadval --
 MarketID=Market.ID And
 MarketTypeID=1 And
 [Transaction].ProductID IN ( Select * From dbo.CalacWareInRange(@Min2,@Max2))
 Group By Product.Title
 )

Go
Select * From dbo.CalacWareInRange(1000,2000000)
Select * From dbo.CalcSumOfWareSell(1000,2000000)
