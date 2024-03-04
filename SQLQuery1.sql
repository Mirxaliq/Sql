--create database Task
use Task
--create table ishciler(
--Name nvarchar(50),
--Surname nvarchar(50),
--Age int, 
--position nvarchar(50),
--salary int
--)
insert into ishciler values
('John', 'Doe', 30, 'Software Engineer', 60000),
    ('Jane', 'Smith', 25, 'Data Analyst', 50000),
    ('Michael', 'Johnson', 35, 'Project Manager', 70000),
    ('Emily', 'Williams', 28, 'UX Designer', 55000),
    ('David', 'Brown', 32, 'QA Tester', 60000),
    ('Sarah', 'Jones', 29, 'System Administrator', 65000),
    ('Alex', 'Miller', 31, 'Business Analyst', 68000)
	select min(salary) from ishciler
	select max(salary) from ishciler
	select AVG(salary) from ishciler
	select Name, Surname, salary from ishciler
WHERE Salary > (SELECT AVG(Salary) FROM ishciler)