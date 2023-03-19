Create proc Product_Delete(  
@flag   varchar(20),  
@pId  varchar(20)=NUll  
)  
AS  
IF @flag='DeleteData'  
BEGIN  
 Delete from Product where ProductId = @pId  
RETURN  
END


Exec Product_Delete @flag='DeleteData' ,@pId='3'