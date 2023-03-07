
--PARSE FUNCTION

--Es la Funcion Menos Eficiente y muchas veces es incapaz de 
--parsear dates con formatos difusos como 20221024

DECLARE @fecha VARCHAR(10)

SET @fecha = '24-10-1992'

SELECT @fecha AS String,
		PARSE(@fecha AS DATETIME USING 'de-de') AS DateGerman


