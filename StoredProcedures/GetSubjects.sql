CREATE OR ALTER PROCEDURE GetSubjects
AS
BEGIN
	SELECT
		s.Id AS subjectId,
		s.Credits,
		s.Title
	FROM
		Subjects s
END;