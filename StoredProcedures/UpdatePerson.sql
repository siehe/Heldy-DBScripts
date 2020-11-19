CREATE OR ALTER PROCEDURE UpdatePerson(
	@personId INT,
	@name NVARCHAR(250) = NULL,
	@secondName NVARCHAR(250) = NULL,
	@surname NVARCHAR(250) = NULL,
	@dob DATE = NULL
)
AS
BEGIN
DECLARE @updateQuery NVARCHAR(MAX) = '';

	IF @dob IS NOT NULL
	BEGIN
		IF @updateQuery <> ''
		BEGIN
			SET @updateQuery = CONCAT(@updateQuery, ', ');
		END;

		SET @updateQuery = CONCAT(@updateQuery, '[DOB] = ''', @dob, '''', ' ');
	END;

	IF @secondName IS NOT NULL
	BEGIN
		IF @updateQuery <> ''
		BEGIN
			SET @updateQuery = CONCAT(@updateQuery, ', ');
		END;

		SET @updateQuery = CONCAT(@updateQuery, '[SecondName] = N''', @secondName, '''', ' ');
	END;

	IF @surname IS NOT NULL
	BEGIN
		IF @updateQuery <> ''
		BEGIN
			SET @updateQuery = CONCAT(@updateQuery, ', ');
		END;

		SET @updateQuery = CONCAT(@updateQuery, '[Surname] = N''', @surname, '''', ' ');
	END;

	IF @name IS NOT NULL
	BEGIN
		IF @updateQuery <> ''
		BEGIN
			SET @updateQuery = CONCAT(@updateQuery, ', ');
		END;

		SET @updateQuery = CONCAT(@updateQuery, '[Name] = N''', @name, '''', ' ');
	END;

	IF @updateQuery <> ''
	BEGIN
		SET @updateQuery = CONCAT('UPDATE Persons SET ', @updateQuery);
		SET @updateQuery = CONCAT(@updateQuery, 'WHERE Id = ', @personId);
		EXEC sp_executesql @updateQuery;
	END;
END;