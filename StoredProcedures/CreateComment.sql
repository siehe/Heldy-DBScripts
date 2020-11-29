CREATE OR ALTER PROCEDURE CreateComment(
	@authorId INT,
	@replyTo INT,
	@text NVARCHAR(MAX),
	@createdAt DATETIME
)
AS
BEGIN
	INSERT INTO Comments 
		(AuthorId, ReplyTo, [Text], PostDate)
	VALUES
		(@authorId, @replyTo, @text, @createdAt);
END;