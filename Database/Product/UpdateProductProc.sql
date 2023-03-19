CREATE proc Update_Product    
(    
@flag           varchar(20),    
@pId          varchar(20)=NULL,    
@pName    varchar(20)=NULL, 
@pDesc    varchar(MAX)=NULL, 
@pPrice          varchar(20)=NULL,
@pImg          varchar(MAX)=NULL  
)    
AS    
IF @flag='UpdateData'    
BEGIN    
 Update Product SET ProductName=@pName, ProductPrice=@pPrice,ProductDesc=@pDesc  where ProductId=@pId    
 SELECT '0' as code, 'Data Updated Sucessfully' as msg    
RETURN    
END

