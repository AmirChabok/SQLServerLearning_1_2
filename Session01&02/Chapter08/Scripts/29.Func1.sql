Create Function SumWareTransaction(@W_ID int)
Returns int
As Begin
Declare @Result int =  (
                       Select Count(*) From [Transaction]
                       Where ProductID=@W_ID
					   )
Return @Result
End

----------------
Go
Select Title,dbo.SumWareTransaction(ID) As UDF
From Product