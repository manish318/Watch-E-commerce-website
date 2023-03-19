Alter proc Product_Proc
(
	@flag		Varchar(30),
	@pName		Varchar(30),
	@pDesc		Varchar(30),
	@pPrice		Varchar(30),
	@pImg		image =NULL
)
AS
IF @flag='InsertProduct'
BEGIN
		Insert into Product(ProductName,ProductDesc,ProductPrice,ProductImage)
		values(@pName,@pDesc,@pPrice,@pImg);
		SELECT '0' as code, 'Product Inserted Successfully' as msg
RETURN
END
if @flag='SelectData'
BEGIN
	select * from Product;
RETURN
END

