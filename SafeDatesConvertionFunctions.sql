--ERROR SAFE DATE CONVERTION FUNCTIONS

--If the string is invalid, exist multiple safe function that can handle invalidad
--dates by converting them to null.


SELECT
	TRY_PARSE('01/13/2019' AS DATE USING 'en-us') AS January13US,
	TRY_PARSE('01/13/2019' AS DATE USING 'fr-fr') AS Smarch1FR, --Daria error porque no existe mes 13.
	TRY_CAST('24/10/1992' AS DATE) AS trycast,
	TRY_CONVERT(DATETIME2(3), '24/10/1992') AS tryconvert



