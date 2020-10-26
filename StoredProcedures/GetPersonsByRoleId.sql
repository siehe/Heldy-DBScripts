CREATE OR ALTER PROCEDURE GetPersonsByRoleId(
	@roleId INT
)
AS
BEGIN
	SELECT
		*
	FROM
		Persons p
	INNER JOIN Roles r ON r.Id = p.[Role] AND r.Id = @roleId
END;