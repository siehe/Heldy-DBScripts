CREATE OR ALTER PROCEDURE UpdateTask (
	@taskId INT,
	@deadline DATE,
	@description NVARCHAR(MAX),
	@statement NVARCHAR(MAX),
	@statusId INT,
	@subjectId INT,
	@typeId INT
)
AS
BEGIN
	DECLARE @updateQuery NVARCHAR(MAX) = '';

	IF @deadline IS NOT NULL
	BEGIN
		IF @updateQuery <> ''
		BEGIN
			SET @updateQuery = CONCAT(@updateQuery, ', ');
		END;

		SET @updateQuery = CONCAT(@updateQuery, '[Deadline] = ''', @deadline, '''', ' ');
	END;

	IF @description IS NOT NULL
	BEGIN
		IF @updateQuery <> ''
		BEGIN
			SET @updateQuery = CONCAT(@updateQuery, ', ');
		END;

		SET @updateQuery = CONCAT(@updateQuery, '[Description] = N''', @description, '''', ' ');
	END;

	IF @statement IS NOT NULL
	BEGIN
		IF @updateQuery <> ''
		BEGIN
			SET @updateQuery = CONCAT(@updateQuery, ', ');
		END;

		SET @updateQuery = CONCAT(@updateQuery, '[Statement] = N''', @statement, '''', ' ');
	END;

	IF @statusId IS NOT NULL
	BEGIN
		IF @updateQuery <> ''
		BEGIN
			SET @updateQuery = CONCAT(@updateQuery, ', ');
		END;

		SET @updateQuery = CONCAT(@updateQuery, 'StatusId = ', @statusId, ' ');
	END;

	IF @subjectId IS NOT NULL
	BEGIN
		IF @updateQuery <> ''
		BEGIN
			SET @updateQuery = CONCAT(@updateQuery, ', ');
		END;

		SET @updateQuery = CONCAT(@updateQuery, 'SubjectId = ', @subjectId, ' ');
	END;

	IF @typeId IS NOT NULL
	BEGIN
		IF @updateQuery <> ''
		BEGIN
			SET @updateQuery = CONCAT(@updateQuery, ', ');
		END;

		SET @updateQuery = CONCAT(@updateQuery, 'TypeId = ', @typeId, ' ');
	END;

	IF @updateQuery <> ''
	BEGIN
		SET @updateQuery = CONCAT('UPDATE Tickets SET ', @updateQuery);
		SET @updateQuery = CONCAT(@updateQuery, 'WHERE Id = ', @taskId);
		EXEC sp_executesql @updateQuery;
	END;
END;