CREATE OR ALTER PROCEDURE GetTypes
AS
BEGIN
	SELECT
		t.Id AS typeId,
		t.[Name] AS [Type]
	FROM
		[Types] t
END;