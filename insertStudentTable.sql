USE [TestDB]
GO

INSERT INTO [dbo].[Student]
           ([Name]
           ,[Age]
           ,[Address]
           ,[Course]
           ,[CourseID])
     VALUES
           ('Lex De Haan',21,'2004 Charade rd','Biology',44),
		   ('Alexander',19,'147 spadina ave','Computer Science',56),
		   ('Bruce Ernst',22,'8204 Artur st','Computer Science',56),
		   ('David Austin',21,'Schwanthalerstr','Computer Science',56),
		   ('Valli Pataballa',20,'Magdalen Centre park','Maths',33)
GO
select * from Student

--select * from Courses