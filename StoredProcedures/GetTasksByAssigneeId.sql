CREATE OR ALTER PROCEDURE GetTasksByAssigneeId(
	@assigneeId INT
)
AS
BEGIN
	SELECT
		assignee.Id AS assigneeId,
		assignee.[Name] AS assigneeName,
		assignee.SecondName AS assigneeSecondName,
		assignee.Surname AS assigneeSurname,
		assignee.DOB AS assigneeDOB,
		assignee.Email AS assigneeEmail,

		author.Id AS authorId,
		author.[Name] AS authorName,
		author.SecondName AS authorSecondName,
		author.Surname AS authorSurname,
		author.DOB AS authorDOB,
		author.Email AS authorEmail,

		t.Id AS taskId,
		t.*,

		s.Id AS subjectId,
		s.*,

		st.[Name] AS [Status],
		st.Id AS statusId,

		typ.[Name] AS [Type],
		typ.Id AS typeId
	FROM
		(SELECT * FROM Persons WHERE Id = @assigneeId) assignee
	INNER JOIN Tickets t ON t.AssigneeId = assignee.Id
	INNER JOIN [Types] typ ON typ.Id = t.TypeId
	INNER JOIN Subjects s ON s.Id = t.SubjectId
	INNER JOIN Persons author ON author.Id = t.AuthorId
	INNER JOIN Statuses st ON st.Id = t.StatusId
END;