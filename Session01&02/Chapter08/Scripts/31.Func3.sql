Create Function NewTableFunction(@W_ID int)
Returns @Result Table
(
	ID int Identity,
	Name Nvarchar(50)
)
As 
Begin
Insert @Result
Select Title From Product Where Product.ID=@W_ID
Return 
End

Go
Select * From dbo.NewTableFunction(2)