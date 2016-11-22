Use Store

--2005--

Insert Into Product(ID,Title,GroupID) Values (60,'پردازنده دو هسته ای',2)

Insert Into Product Select 61,'پردازنده سه هسته ای',2

-- 2008 , 2012 , 2014 --

Insert Into Product(ID,Title,GroupID) 
Values (62,'پردازنده چهار هسته ای',2),(63,'پردازنده پنچ هسته ای',2),
(64,'پردازنده شش هسته ای',2),(65,'پردازنده هفت هسته ای',2)

Insert Into Product 
Select 66,'رم 2 گیگ',2 Union Select 67,'رم 4 گیگ',2
Union Select 68,'رم 8 گیگ',2 
Union Select 69,'رم 16 گیگ',2
Union Select 70,'رم 32 گیگ',2