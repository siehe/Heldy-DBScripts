CREATE OR ALTER PROCEDURE GetColumns
AS
BEGIN
	SELECT
		s.Id AS Id,
		s.[Name] AS [Name]
	FROM
		Statuses s
END;