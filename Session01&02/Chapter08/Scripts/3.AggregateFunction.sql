Use Store
Select [Group].Title,SUM ([Transaction].[Count])As TotalCount
From [Transaction],Product,[Group]
Where [Transaction].ProductID=Product.ID And Product.GroupID=[Group].ID
Group by [Group].Title
Having Sum([Transaction].[Count])>50000