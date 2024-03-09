create database DemoApp
use demoapp
create table Users (
ID int identity primary key,
Name nvarchar(50) not null,
Surname nvarchar(50) not null,
Email nvarchar(60) unique,
RegistrationDate Datetime default getdate() check(RegistrationDate <  getdate()) ,
ContactNumber nvarchar(50) default '+994000000000',
Age int check(Age>18),
Adress nvarchar(50)
)
insert into users(Name,Surname,Email,RegistrationDate,Age,Adress) values
('Murad','Hetemzade','mHatamzade@gmail.com','2022-05-15 00:00:00.000',23,'Naxcivan')

insert into users (Name,Surname,Email,RegistrationDate,ContactNumber,Age,Adress)values
('Eiden','mils','Eim2@d','2022-05-15 00:00:00.000','568285',33,'Newyork'),
('Orxan','Nebiyev','OrxanNbyv234',' 2022-05-15 00:00:00.000','445775',30,'Baku')
create table Categories (
id int identity primary key,
Name nvarchar(50) not null,
CreatedAt Datetime  default getdate() check(CreatedAt<getdate()),
Isactive bit default 1
)
insert into Categories(Name,Isactive) values
('Emil',1)
insert into Categories(Name,CreatedAt) values
('james','2022-05-15 00:00:00.000'),
('Tebriz','')

select Name, Surname , Email from users
select Name , Isactive from Categories
