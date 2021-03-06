USE [StudentPerformanceManagement]
GO
/****** Object:  StoredProcedure [dbo].[insertSubject]    Script Date: 09-05-2022 17:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[insertSubject]
(
@code int,@title varchar(100),@description varchar(500),@courseCode int
)
as 
begin
declare @courseId int;
set @courseId=( select courseID  from [course].[Course] where courseCode=@courseCode)

insert into [course].[Subjects]
	([subjectCode],[subjectTitle],[description],[courseID]) 
values
	(@code,@title,@description,@courseId)
end

execute insertSubject 8989,'Biology','It is branch of Science',1112
