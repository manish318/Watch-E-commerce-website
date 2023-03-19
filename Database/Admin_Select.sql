Create Proc Admin_Select(
@flag           varchar(20),
@userName       varchar(20)=NULL,
@pwd            varchar(20)=NULL,
@address        varchar(20)=NULL,
@isActive       char(20)=NULL
)
AS
IF @flag='SelectData'
BEGIN
	select * from Admin_Master
RETURN
END

Exec Admin_Select @flag='SelectData'