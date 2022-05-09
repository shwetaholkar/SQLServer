--insert student

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

--execute insertStudent 101,'ram','ram@gmail.com','nagar',3
--select * from [student].[Student]
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--insert course 

--create procedure insertCourse
--(
--@code int,@title varchar(100),@description varchar(500)
--)
--as 
--begin
--insert into [course].[Course]
--	([courseCode],[courseTitle],[description]) 
--values
--	(@code,@title,@description)
--end

--execute insertCourse 1111,'cpp','programming language' 
--execute insertCourse 1112,'php','scripting language' 
--select * from [course].[Course]

--------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
--insert subject

--create procedure insertSubject
--(
--@code int,@title varchar(100),@description varchar(500),@courseId int
--)
--as 
--begin
--insert into [course].[Subjects]
--	([subjectCode],[subjectTitle],[description],[courseID]) 
--values
--	(@code,@title,@description,@courseId)
--end

--select * from [course].[Subjects]
--execute insertSubject 1334,'Physics','It is a science subject', 5

------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
--insert total marks

--alter procedure insertMarks
--(
--@studentId int,@subjectId int,@marks int
--)
--as 
--begin
--insert into [marks].[Marks]
--	([studentID],[subjectID],[marks]) 
--values
--	(@studentId,@subjectId,@marks)
--end

--execute insertMarks 1,1,88
--select * from [marks].[Marks]

---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
--Edit course 

--create procedure editCourse
--(
--@courseId int, @code int, @title varchar(100), @description varchar(500)
--)
--as 
--begin
--update 
--	[course].[Course]
--set 
--	[courseCode]=@code,
--	[courseTitle]=@title,
--	[description]=@description
--where 
--	[courseID]=@courseId
--end

--select * from [course].[Course]
--------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
--Delete Course

--create procedure deleteCourse
--(
--	@courseId int
--)
--as 
--begin
--delete 
--from 
--	[course].[Course]
--where 
--	[courseID]=@courseId
--end

--select * from [course].[Course]
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
--display course wise average marks 

--create procedure displayCourseWiseAverageMarks

--as 
--begin
--	select 
--	c.[courseTitle],
--	avg(m.[marks]) as AverageMarks
--	from 
--		[course].[Course] c
--	inner join
--		[student].[Student] s
--	on
--		c.[courseID]=s.[courseID]
--	inner join
--		[marks].[Marks] m
--	on 
--		s.[studentID]=m.[studentID]
--	group by
--		c.[courseTitle]
--end

--execute displayCourseWiseAverageMarks

--select * from [course].[Course]
--select * from [marks].[Marks]

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- DisplayCourseWiseHighestMarks

--create procedure displayCourseWiseHighestMarks
--as 
--begin
--	select 
--	c.[courseTitle],
--	max(m.[marks]) as HighestMarks
--	from 
--		[course].[Course] c
--	inner join
--		[student].[Student] s
--	on
--		c.[courseID]=s.[courseID]
--	inner join
--		[marks].[Marks] m
--	on 
--		s.[studentID]=m.[studentID]
--	group by
--		c.[courseTitle]
--end

--execute displayCourseWiseHighestMarks
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--DisplayCourseWiseTopper --create procedure DisplayCourseWiseTopper 
--as
--begin
--select
--	c.[courseTitle],max(m.[marks]) as CourseWiseTopper
--from
--	[course].[Course] c
--INNER JOIN
--	[student].[Student] s
--on
--	c.[courseID]=s.[courseID]
--Inner Join
--	[marks].[Marks] m
--on
--	m.[studentID]=s.[studentID]
--group by 
--	c.[courseTitle]
--end

--exec DisplayCourseWiseTopper 

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
--Update Student

--create procedure editStudent
--(
--@studentId int, @rollNo int, @name varchar(100), @email varchar(100),@address varchar(250)
--)
--as 
--begin
--update 
--	[student].[Student]
--set 
--	[studentRollno]=@rollNo,
--	[studentName]=@name,
--	[studentEmail]=@email,
--	[studentAddress]=@address
--where 
--	[studentID]=@studentId
--end

--select * from [student].[Student]
------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--Delete Student

--alter procedure deleteStudent
--(
--	@studentId int
--)
--as 
--begin
--delete 
--from 
--	[student].[Student]
--where 
--	[studentID]=@studentId
--end

--select * from [marks].[Marks]
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--select * from [course].[Subjects]

--select * from [student].[Student]

--select * from [course].[Course]

--Update Subject

--create procedure editSubject
--(
--@subjectId int, @code int, @title varchar(100), @description varchar(100)
--)
--as 
--begin
--update 
--	[course].[Subjects]
--set 
--	[subjectCode]=@code,
--	[subjectTitle]=@title,
--	[description]=@description
	
--where 
--	[subjectID]=@subjectId
--end

------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
--Delete Subject

--create procedure deleteSubject
--(
--	@subjectId int
--)
--as 
--begin
--delete 
--from 
--	[course].[Subjects]
--where 
--	[subjectID]=@subjectId
--end

------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

