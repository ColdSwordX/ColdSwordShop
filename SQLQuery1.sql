drop table Inventory
drop table ItemCatagory
drop table Basket
drop table CheckOut
drop table PersonInformation
drop table login
go
Create Table Login(
	ID int Identity(1,1) primary key,
	Username  char(255) UNIQUE not null,
	Pass  char(255) not null,
	Administrator int default 0
);
Create Table PersonInformation(
	ID int Identity(1,1) primary key,
	PIID int foreign key references login(ID),
	Fname char(255),
	Lname  char(255),
	Email  char(255),
	Phone int,
	PostalCode  char(255),
	City  char(255),
	Street  char(255),
	StreetNR  char(255)
);
Create Table ItemCatagory(
	CatagoryID int Identity(1,1) primary key,
	CatagoryName  char(255)
);

Create Table Inventory(
	ItemID int Identity(1,1) primary key,
	ItemName  char(255),
	ItemPrice  char(255),
	ItemDescription  char(255),
	Catagory int foreign key references ItemCatagory(CatagoryID)
);
Create Table Basket(
	BasketID int Identity(1,1) primary key,
	OrdreID int,
	ItemID int
);
Create Table CheckOut(
	OrdreNR int Identity(1,1) primary key,
	PersonID int foreign key references PersonInformation(ID)
);
go
insert into Login (Username, Pass, Administrator)
values ('jens' , '123', 1 );
insert into PersonInformation (PIID, Fname, Lname, Email, Phone, PostalCode, City, Street, StreetNR)
values (1 , 'Jens Anker', 'Bruun de Neergaard', 'Jens@jens.com',12345678, '45612', 'Sønderborg','Damgade', 123);
insert into ItemCatagory
values('cakes');
insert into ItemCatagory
values('Beds');
insert into Inventory
values('Strabarry','100' ,'Nice cake with strabarry', 1);
insert into Inventory
values ('1 size bed', '1500', 'Bed for 1 person', 2);
go
select * from Login
select * from PersonInformation
select * from ItemCatagory
select * from Inventory
select ID from Login where Username = 'jens' and Pass = '123'