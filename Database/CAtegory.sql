create table Category(
 rowId           int primary key identity(1,1),
 Title           varchar(20),          
 Image           varchar(max),
 IsActive         char(20),
 IsDeleted        char(20)
)


select * from  Category

Truncate table Product
---------------------------------------------------------------------------------
----------------------------------------------------------------------------------

Create Proc Insert_Category(
@flag            varchar(20),
 @Cname         varchar(20)=NULL,
 @image           varchar(MAX)=NULL,
 @Isactive         char(20)=NULL,
 @Isdelete        char(20)=NULL
)
AS
IF @flag='InsertCategory'
BEGIN
   SELECT '0' as code, 'Category Insert Sucessfully' as msg  
	Insert into Category(Title,Image,IsActive,IsDeleted)
    values(@Cname,@image,@Isactive,@Isdelete)
RETURN
END

EXEC Insert_Category @flag='InsertCategory', @Cname='SmartWatch', @Isactive='Y',@Isdelete='N'


-------------------------------------------------------------------------------
------------------------------------------------------------------------------

Create Proc View_Category(
@flag      varchar(20)
)
AS
IF @flag='SelectData'
BEGIN
	select * from Category
RETURN
END

EXEC View_Category @flag='SelectData'
Truncate table category

--------------------------------------------------------------------------
----------------------------------------------------------------------------

Create proc Category_Delete(  
@flag   varchar(20),  
@rowid  varchar(20)=NUll  
)  
AS  
IF @flag='DeleteData'  
BEGIN  
 Delete from Category where rowId = @rowid  
RETURN  
END

Exec Category_Delete @flag='DeleteData' 

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

CREATE proc Update_Category    
(    
@flag           varchar(20),    
@rowid          varchar(20)=NULL,    
@Cname          varchar(20)=NULL,    
@Image          varchar(MAX)=NULL,      
@isactive       char(20)=NUll,  
@isdelete       char(20)=NUll  
)    
AS    
IF @flag='UpdateData'    
BEGIN    
 Update Category SET Title=@Cname, IsActive=@isactive, IsDeleted=@isdelete  where rowId=@rowid    
 SELECT '0' as code, 'Data Updated Sucessfully' as msg    
RETURN    
END

Exec Update_Category @flag='UpdateData'