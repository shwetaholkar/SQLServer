--create procedure insertStudent
--(
--@rollno int,@name varchar(100),@email varchar(100),
--@address varchar(255),@courseId int
--)
--as 
--begin
--insert into [student].[Student]
--	([studentRollno],[studentName],[studentEmail],[studentAddress],
--	[courseID]) 
--values
--	(@rollno,@name,@email,@address,@courseId)
--end

execute insertStudent 101,'ram','ram@gmail.com','nagar',3
select * from [student].[Student]
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------

create procedure insertCourse
(
@code int,@title varchar(100),@description varchar(500)
)
as 
begin
insert into [course].[Course]
	([courseCode],[courseTitle],[description]) 
values
	(@code,@title,@description)
end

execute insertCourse 1111,'cpp','programming language' 
execute insertCourse 1112,'php','scripting language' 
select * from [course].[Course]