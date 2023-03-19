Alter proc Proc_Admin_Login  
(  
 @flag   Varchar(30),  
 @user   Varchar(30),  
 @pwd   Varchar(30),  
 @userType  Varchar(30)=NULL,  
 @address  Varchar(30)=NULL,  
 @createdBy  Varchar(30)=NULL  
)  
AS  
IF @flag='DoLogin'  
BEGIN  
 --success  
 IF EXISTS(SELECT 'x' FROM Admin_Master WHERE userName=@user and pwd=@pwd)  
 BEGIN  
  SELECT '0' as code, 'Login Success' as msg  
 RETURN  
 END  
 --fail  
 SELECT '1' as code, 'Login Failed' as msg  
RETURN  
END

IF @flag='InsertData'
BEGIN
 select '0' as code, 'data inserted successfully' as msg

 INSERT into Admin_Master(UserName,Pwd,Address,UserType,CreatedDate,IsActive)
 values(@user,@pwd,@address,@userType,getDate(),'Y')
RETURN
END

EXEC Proc_Admin_Login @Flag='InsertData', @user='Nischal'