USE [StudentPerformanceManagement]
GO
/****** Object:  StoredProcedure [dbo].[insertStudent]    Script Date: 09-05-2022 12:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[insertStudent]
(
@rollno int,@name varchar(100),@email varchar(100),
@address varchar(255),@courseCode int
)
as 
begin
declare @courseId int;
set @courseId=( select courseID  from [course].[Course] where courseCode=@courseCode)
insert into [student].[Student]
	([studentRollno],[studentName],[studentEmail],[studentAddress],
	[courseID]) 
values
	(@rollno,@name,@email,@address,@courseId)
end


