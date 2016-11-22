Create Table #T
(Number int)
Declare @Counter int=1
While (@Counter<32)
Begin
Insert #T
Select @Counter
Set @Counter+=1
End
--برای اعمال آتر جوین کواری باید حالت جدول داشته باشد از علامت پرانتز استفاده میکنیم
Select Number,Case When DayNumber IS NULL Then 'NoSale'
Else 'Sale' End As Sale 
From #T Left Outer Join(
Select [Transaction].*,Day(DueDate) As DayNumber
From [Transaction],Market
Where MarketID=Market.ID And
ProductID=1 And
Month(DueDate)=5)As Temp
On #T.Number=Temp.DayNumber
Drop Table #T