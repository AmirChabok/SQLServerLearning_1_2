Declare @ID int =80
Declare @Title Nvarchar(100)='Milk'
Declare @GroupID int=3

IF(Exists
(Select * From Product Where ID=@ID))

Begin
Update Product Set Title = @Title,GroupID=@Group_ID
Where ID=@ID
End

Else
Begin
Insert Product 
Select @ID,@Title,@Group_ID
End