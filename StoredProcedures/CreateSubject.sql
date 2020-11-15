CREATE OR ALTER PROCEDURE CreateSubject(
	@title NVARCHAR(100),
	@credits INT
)
AS
BEGIN
	INSERT INTO Subjects 
		(Title, Credits)
	VALUES
		(@title, @credits);

	SELECT @@IDENTITY AS createdId;
END;