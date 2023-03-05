Create Proc Client_L(
@flag           varchar(20),
@userName       varchar(20),
@phone_no       varchar(20)=Null,
@address        varchar(20)=NULL,
@pwd            varchar(20)
)
AS
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

EXEC Client_L @flag='DoLogin' 





select * from Client

Truncate table Client