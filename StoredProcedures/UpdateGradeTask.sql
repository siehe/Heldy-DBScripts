CREATE OR ALTER PROCEDURE UpdateGradeTask (
	@taskId INT,
	@grade INT
)
AS
BEGIN
	UPDATE Tickets SET Grade = @grade, StatusId = 4 WHERE Id = @taskId
END;