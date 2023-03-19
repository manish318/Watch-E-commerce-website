Create Proc View_product(
@flag            varchar(20)
)
AS
IF @flag='SelectData'
BEGIN
	select * from Product
RETURN
END

EXEC View_product @flag='SelectData'