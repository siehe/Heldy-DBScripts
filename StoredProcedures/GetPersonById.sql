CREATE OR ALTER PROCEDURE GetPersonById(
	@id INT
)
AS
BEGIN
	SELECT
		*
	FROM
		Persons p
    WHERE p.Id = @id
END;