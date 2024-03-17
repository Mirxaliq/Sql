create Database Telebeler
use Telebeler
create table Students
(
Id int identity primary key,
Name nvarchar(50),
Surname nvarchar(50),
Age int ,
Faculty nvarchar(50)
)
insert into Students(Surname,name,Age,Faculty) values
('Nagizade','Orxan',30,'It'),
('Hetemzade','Mirxaliq',23,'Aerospace'),
('Hetemzade','Murad',23,'Iqtisadiyyat'),
('Eliyev','Heyder',22,'NQMM')
select Name,Surname,Faculty from Students 
where Age>23
update Students 
set Age = 23
where Id= 1
delete Students
where id = 2
select count(*) from Students
where Faculty = 'iqtisadiyyat'
SELECT Name,Surname from Students
WHERE Age > 20
ORDER BY Name ASC;
SELECT * FROM Students
WHERE Faculty <> '?qtisadiyyat' AND Age > 22;
select name,Surname from Students
where Name like  ('%a%') or  Name like ('%e%')
alter table students
drop column Faculty
create table Faculty(
Facultyid int identity primary key,
Name nvarchar(50)not null
)
insert into Faculty values
('Iqtisadiyyat')
ALTER TABLE Students
ADD FacultyId int;
ALTER TABLE Students
ADD CONSTRAINT FK_Students_Faculty FOREIGN KEY (FacultyId) REFERENCES Faculty(FacultyId);
SELECT Faculty.Name AS FacultyName, COUNT(Students.Id) AS StudentCount
FROM Faculty
INNER JOIN Students ON Faculty.Facultyid = Students.Facultyid
GROUP BY Faculty.Name;
SELECT Students.Name, Students.Surname
FROM Students
LEFT JOIN Faculty ON Students.Facultyid = Faculty.Facultyid
WHERE Faculty.Name = 'Iqtisadiyyat';

