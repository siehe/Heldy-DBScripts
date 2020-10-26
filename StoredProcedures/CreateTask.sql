CREATE OR ALTER PROCEDURE CreateTask(
	@statement NVARCHAR(MAX),
	@deadline DATE,
	@description NVARCHAR(MAX),
	@subjectId INT,
	@assigneeId INT,
	@authorId INT,
	@typeId INT,
	@statusId INT
)
AS
BEGIN
	INSERT INTO Tickets
		([Statement], Deadline, [Description], SubjectId, AssigneeId, AuthorId, TypeId, StatusId)
	VALUES
		(@statement, @deadline, @description, @subjectId, @assigneeId, @authorId, @typeId, @statusId)
END;