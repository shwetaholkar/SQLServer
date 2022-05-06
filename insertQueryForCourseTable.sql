USE [TestDB]
GO

INSERT INTO [dbo].[Courses]
           ([Title]
           ,[Details])
     VALUES
           ('Computer Science','Computer Science Full Course'),
		   ('Electronic Science','Electronic Science Full Course')
GO

select * from Courses
