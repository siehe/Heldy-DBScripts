CREATE OR ALTER PROCEDURE GetPersonTasksCount(
	@id INT
)
AS
BEGIN
	SELECT COUNT(Id) AS 'count' FROM Tickets
    WHERE AssigneeId = @id
END;