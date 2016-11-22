Use Store
Select Product.Title,[Group].Title
From Product,[Group]
Where Product.GroupID=[Group].ID --InnerJoin

Select Product.Title,[Group].Title
From Product Inner Join [Group]
On
Product.GroupID=[Group].ID