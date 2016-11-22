Create Trigger NotDelete
On Product
--Select Action --
Instead Of Delete
As
Begin
Print 'You Can Not Delete'
End

Delete Product Where ID=10