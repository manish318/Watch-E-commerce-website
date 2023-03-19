create table Product(
	ProductId int primary key identity(1,1),
	ProductName varchar(100),
	ProductDesc varchar(MAX),
	ProductPrice varchar(50),
	ProductCategory varchar(50),
	ProductImage varchar(MAX)
)