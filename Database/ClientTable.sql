Create table Client(
rowID        int primary key identity(1,1),
Username     varchar(30),
phone_no     varchar(10),
address      varchar(30),
Password     varchar(30),
CreatedDate  datetime
)

select * from Client

Insert into Client(Username,phone_no,address,Password,CreatedDate)
Values('@username','@phone_no','@address','@pwd',GETDATE())