CREATE OR ALTER PROCEDURE GetPersonToDoTasksCount(
	@id INT
)
AS
BEGIN
	SELECT COUNT(Id) AS 'count' FROM Tickets
    WHERE AssigneeId = @id and StatusId = 1
END;