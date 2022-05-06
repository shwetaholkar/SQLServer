/*3. Show the full list of students with each 
row also showing the Title and details of the course 
student has enrolled in  */

select
	name, title, details 
from 
	Student 
inner join 
	Courses
on 
	Student.CourseID=Courses.CourseID
	
/* 4. Use inner join between Employee, jobs and 
	department table to show the following data 
a. Emp full name, job title, department name */

select 
	first_name +' '+ last_name as 'Employee Name',department_name,job_title
from
	employees
inner join 
	departments
on
	employees.department_id=departments.department_id
inner join 
	jobs
on 
	employees.job_id=jobs.job_id

/*5. Course wise show count of students. */

select 
	Title,
	count(Name) as 'Count of Students'
from 
	Student 
inner join 
	Courses
on 
	Student.CourseID=Courses.CourseID
group by
	Title

/* 6. Show all students who all belong to course Title ending with “Science” */

select 
	Name,Title
from 
	Student 
inner join 
	Courses
on 
	Student.CourseID=Courses.CourseID
group by
	 Name,Title 
having 
	 Title like '%Science';

/* 7. Create the above query with inner join and in clause */

select 
	Name,Title
from 
	Student 
inner join 
	Courses
on 
	Student.CourseID=Courses.CourseID
group by
	 Name,Title 
having
	Title in (select Title from Courses where 
	 Title like '%Science');


/*8. List all students alphabetically arranged */

select * from Student order by Name;

/* 9. Show all students alphabetically arranged by Title of course*/

select
	Name, Title 
from 
	Student 
inner join 
	Courses
on 
	Student.CourseID=Courses.CourseID
order by Name 

/* 10. Show Course having the max number of students*/

select 
	c.Title, count(Name) [number of Students]
from 
	Student 
inner join 
	Courses c
on 
	Student.CourseID=c.CourseID
group by
	Title
	having count(Name)=(
select max(e.[number of Students])
from
(
select 
	c.Title, count(*) [number of Students]
from 
	Student 
inner join 
	Courses c
on 
	Student.CourseID=c.CourseID
group by
	Title
	)e
	)


--select cs.Title,COUNT(cs.CourseID) from Courses cs
--inner join 
--student std 
--on std.CourseID= cs.CourseID
--group by cs.Title
--having count(cs.CourseID)=(
--	   select  max(e.[Count of student]) [number of student]
--	   from(

--	   select c.Title, count(s.StudentID) [Count of student] from	 student s
--	   inner join  Courses c on c.CourseID= s.CourseID
--	   group by c.Title
--	   )e
--	   )

/* 11. Show list of courses order by the number of students in each */	

select
	 Title, count(Name) as 'number of Students'
from 
	Student 
inner join 
	Courses
on 
	Student.CourseID=Courses.CourseID
group by
	Title
order by [number of Students] 

/* 12. Show the following list
Steven King - Maths
Neena Kochhar - Biology
Lex De Haan - Biology
Alexander Hunold - Computer Science
Bruce Ernst - Computer Science
David Austin - Computer Science
Valli Pataballa - Maths*/

select Name+' '+'-'+' '+Title  
from 
	Student 
inner join 
	Courses
on 
	Student.CourseID=Courses.CourseID