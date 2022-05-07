USE [SampleStore]
GO

UPDATE [sales].[customers]
   SET [first_name] = <first_name, varchar(255),>
      ,[last_name] = <last_name, varchar(255),>
      ,[phone] = <phone, int,>
      ,[email] = <email, varchar(255),>
      ,[street] = <street, varchar(255),>
      ,[city] = <city, varchar(50),>
      ,[state] = <state, varchar(25),>
      ,[zip_code] = <zip_code, varchar(5),>
 WHERE <Search Conditions,,>
GO


