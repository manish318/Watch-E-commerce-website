AlTER Proc Proc_Client_Login(
@flag           varchar(20),
@userName       varchar(20)=NULL,
@phone_no       varchar(20)=Null,
@address        varchar(20)=NULL,
@pwd            varchar(20)=NULL
)
AS
IF @flag='InsertData'
BEGIN
   SELECT '0' as code, 'Data insert sucessfully' as msg  
	Insert into Client(Username,phone_no,address,Password,CreatedDate)
    values(@userName,@phone_no,@address,@pwd,getdate())
RETURN
END

IF @flag='DoLogin'
BEGIN
	--success
	IF EXISTS(SELECT 'x' FROM Client WHERE Username=@userName and Password=@pwd)
	BEGIN
		SELECT '0' as code, 'Login Success' as msg
	RETURN
	END
	--fail
	SELECT '1' as code, 'Login Failed' as msg
RETURN
END

EXEC Proc_Client_Login @flag='InsertData' , @userName='Manish',@phone_no='9801234567',@address='BKT',@pwd='Pandey'

Exec Proc_Client_Login @flag='DoLogin' , @userName='Manish', @pwd='Pandey'

