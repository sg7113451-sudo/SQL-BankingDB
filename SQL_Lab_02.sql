show databases;         -- list all databases
create database Bankingdb;          -- to create  database
create database if not exists Bankingdb;
 use B;
use Bankingdb;
 create table customers(customerid int, Firstname varchar(50), lastname varchar(50), Email varchar(100), phone varchar(15));
 select * from customers;
 desc customers;
 alter table customers add column AccontCreationDate date;
 desc customers;
 select * from customers; 
 create table Accounts(Accountid  int, AccountType varchar(20), balance decimal(10, 2));
 
 
 
 
