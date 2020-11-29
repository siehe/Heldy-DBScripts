CREATE OR ALTER PROCEDURE GetPostComments(
	@postId INT
)
AS
BEGIN
	SELECT
		c.Id,
		c.AuthorId,
		c.PostDate,
		c.ReplyTo,
		c.[Text]
	FROM
		Comments c
	WHERE
		c.ReplyTo = @postId;
END;