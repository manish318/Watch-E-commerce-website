Create proc Admin_Delete(
@flag   varchar(20),
@rowid  varchar(20)=NULL
)
AS
IF @flag='DeleteData'
BEGIN
	Delete from Admin_Master where rowId = @rowid
RETURN
END

Exec Admin_Delete @flag='DeleteData'