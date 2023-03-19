Alter proc Product_Proc          
(          
 @flag  Varchar(30),    
 @pId varchar(20)=NULL,    
 @pName  Varchar(30)=NULL,          
 @pDesc  Varchar(30)=NULL,          
 @pPrice  Varchar(30)=NULL,          
 @pImg  varchar(200) =NULL          
)          
AS          
IF @flag='InsertProduct'          
BEGIN          
  SELECT '0' as code, 'Product Inserted Successfully' as msg          
  Insert into Product(ProductName,ProductDesc,ProductPrice,ProductImage)          
  values(@pName,@pDesc,@pPrice,@pImg);          
          
RETURN          
END          