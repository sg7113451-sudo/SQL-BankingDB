create database zomato;
use zomato;
create table restaurants(restaurantid int, nam varchar(100), location varchar(100), rating decimal(2,1));
insert into restaurants (restaurantid,nam,location,rating) values (101,'burger king','pune',4.2),(102,'dominos','mumbai',4.4),(3, 'KFC', 'Delhi', 4.3),
(4, 'Pizza Hut', 'Bangalore', 3.9),
(5, 'Subway', 'Hyderabad', 4.1);
alter table restaurants add Email varchar(50);
create table customers(nam varchar(50),customerid int,phone varchar(20),Email varchar(50));
create	table Orders(Orderid int,Customerid int, Restaurantid int,Orderdate date,Amoun decimal(6,2));
alter table restaurants add primary key (restaurantid);
alter table restaurants modify nam varchar(100) not null;
alter table restaurants add constraint un_email unique(Email);
alter table customers add primary key (customerid);
alter table customers modify nam varchar (100) not null;
alter table customers add constraint un_phone unique (phone); 
alter table customers  modify email varchar (50) not null;
alter table orders add primary key (orderid);
alter table orders modify customerid int not null;
alter table orders modify restaurantid int not null;
alter table orders modify orderdate date not null;
alter table orders add amount decimal(6,2) not null;
insert into customers(CustomerID, Nam, Phone, Email)VALUES(1, 'Rahul Sharma', '9876543210', 'rahul@gmail.com'),(2, 'Priya Mehta', '9123456789', 'priya@gmail.com');
insert into customers(CustomerID, Nam, Phone, Email)VALUES (3,'Shubham gaikwad','9890361504','shubham@gmail.com');
INSERT INTO Orders (OrderID, CustomerID, RestaurantID, OrderDate, Amount)VALUES(101, 1, 2, '2026-07-25', 450.00),(102, 2, 1, '2026-07-25', 300.00);
alter table Orders add constraint fk_customer foreign key (customerid) references customers(customerid);
alter table Orders add constraint fk_restaurant foreign key (restaurantid) references restaurants(restaurantid);
update orders set	restaurantid = 101 where restaurantid=1;
update orders set restaurantid = 102 where restaurantid = 2;