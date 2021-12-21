create table Persons
(
ID	int identity(1,1) primary key,
LastName	varchar(50) not null,
FirstName	varchar(50),
Address	varchar(10),
City	varchar(50)
)