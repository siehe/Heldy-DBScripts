CREATE OR ALTER PROCEDURE CreatePerson(
	@role INT,
	@Name NVARCHAR(MAX),
	@Surname NVARCHAR(MAX),
	@SecondName NVARCHAR(MAX),
	@dob DATE = NULL,
	@email NVARCHAR(MAX),
	@password NVARCHAR(MAX)
)
AS
BEGIN
	INSERT INTO Persons
		([Role], [Name], Surname, SecondName, DOB, Email, [Password])
	VALUES
		(@role, @name, @surname, @secondName, @dob, @email, @password)
END;