/* Show the full list of students with each row also showing 
the title and details of the course student has enrolled in */

create table Candidates(
id int primary key,fullname varchar(255) not null);

create table Employee(
id int primary key,fullname varchar(255) not null);

insert into Candidates values('John Doe'),('Lily Bush'),('Peter Drucker');   

insert into Employee values('John Doe'),('Lily Bush'),('Michel Scott');
select * from Candidates;
select * from Employee;

select
c.id candidate_id,
c.fullname candidate_name,
e.id employee_id,
e.fullname employee_name
from 
Candidates c
inner join 
Employee e
on 
e.fullname=c.fullname;

