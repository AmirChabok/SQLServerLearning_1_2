Create Procedure [SavaProductGroup] (@ProductTitle nvarchar(max),@GroupTitle nvarchar (max))
As
Begin
     If(Not Exists (
	                 Select * From Product Where Title = @ProductTitle))
Begin
     If(Exists     (
	                  Select * From [Group] Where Title = @GroupTitle))
Begin
     Insert Product Select @ProductTitle,(
	                                   Select ID From [Group] Where Title = @GroupTitle)
End
End
Else
If(Exists (
	                 Select * From Product Where Title = @ProductTitle))
					 Begin
If(Not Exists     (
	                  Select * From [Group] Where Title = @GroupTitle))
Begin

    Insert [Group] Select @GroupTitle
	Insert Product Select @ProductTitle,@@IDENTITY
End
End
Begin

If(Not Exists (
	                 Select * From [Group] Where Title = @GroupTitle))
					 Begin
					 If(Not Exists (
	                 Select * From Product Where Title = @ProductTitle))
					 Begin
      Insert [Group] Select @GroupTitle
	  Insert Product Select @ProductTitle,@@IDENTITY
	
End
End
End
End