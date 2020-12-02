CREATE OR ALTER PROCEDURE GetPersonByEmail
@email NVARCHAR(MAX)
AS
BEGIN
	SELECT [Persons].[Id] ,[Role] ,[Persons].[Name] ,[Surname] ,[SecondName] ,[DOB] ,[Email] ,[Password], [Roles].[Id] as 'RoleId'
	FROM Persons
	join Roles on Persons.Role = Roles.Id
	WHERE [Email] = @email
END;