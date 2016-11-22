USE Store
Select * ,(Select Title From Product Where [Transaction].ProductID=Product.ID)AS ProductTitle
From [Transaction]
GO
--ترکیب کور لیتد و نان کور لیتد
Select * ,(Select Sum([Count]) From [Transaction]
Where [Transaction].ProductID=Product.ID)*100/
(Select Sum([Count]) From [Transaction]) As Result
From Product
Order By Result DESC