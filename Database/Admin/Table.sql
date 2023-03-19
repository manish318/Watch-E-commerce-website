CREATE Table Admin_Master
(
rowID		int primary key identity(1,1),
userName	varchar(50),
pwd			varchar(50),
address		varchar(50),
userType	varchar(50),
createdBy	varchar(50),
createdDate	varchar(50),
isActive	char(50),
isDeleted	char(50)
)

Insert Into Admin_Master
values('admin','admin','kathmandu','admin','system',getdate(),'Y','N')

select * from Admin_Master;