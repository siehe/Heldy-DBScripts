CREATE OR ALTER PROCEDURE CreateTestTickets
AS
BEGIN
	DECLARE @i INT = 5;

	WHILE @i <> 0
	BEGIN
		INSERT INTO Tickets 
			(AuthorId, AssigneeId, TypeId, SubjectId, StatusId, [Statement], [Description], EctsMark, Grade, Comment, Deadline)
		VALUES
			(1, 2, ABS(CHECKSUM(NEWID()) % 4) + 1, ABS(CHECKSUM(NEWID()) % 4) + 1, ABS(CHECKSUM(NEWID()) % 4) + 1, CONCAT(N'Lorem ipsum dolor sit amet #', @i), N'If you have any questions, I am so sorry for you', NULL, NULL, NULL, '2020-10-31')

		SET @i = @i - 1;
	END;
END;