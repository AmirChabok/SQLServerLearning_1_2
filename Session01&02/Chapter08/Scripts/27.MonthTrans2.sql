Create Table #T
(Number int)
Declare @Counter int=1
While (@Counter<32)
Begin
Insert #T
Select @Counter
Set @Counter+=1
End
--���? ����� ��� ��?� ����? ��?� ���� ���� ����� ���� �� ����� ������ ������� �?��?�
Select * From #T Left Outer Join(
Select [Transaction].*,Day(DueDate) As DayNumber
From [Transaction],Market
Where MarketID=Market.ID And
ProductID=1 And
Month(DueDate)=5)As Temp
On #T.Number=Temp.DayNumber
Drop Table #T