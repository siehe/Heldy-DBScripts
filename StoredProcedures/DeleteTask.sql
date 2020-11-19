CREATE OR ALTER PROCEDURE DeleteTask(
	@taskId INT
)
AS
BEGIN
	DELETE FROM
		Tickets
	WHERE
		Id = @taskId;
END;