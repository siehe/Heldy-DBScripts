CREATE OR ALTER PROCEDURE GetPersonByEmail
@email NVARCHAR(MAX)
AS
BEGIN
	SELECT [Id] ,[Role] ,[Name] ,[Surname] ,[SecondName] ,[DOB] ,[Email] ,[Password] 
	FROM Persons
	WHERE [Email] = @email
END;