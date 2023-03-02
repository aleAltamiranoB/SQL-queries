-- UDF User Defined Functions


--CREATE FUNCTION GetTomorrow()
--RETURNS datetime AS
--BEGIN
--RETURN (SELECT DATEADD(DAY, -1, GETDATE()))
--END

--Execute the predefined function:

SELECT  dbo.GetTomorrow()

DECLARE @TomorrowDay AS datetime
EXEC @TomorrowDay = dbo.GetTomorrow
SELECT
	'Tomorrow: ', @TomorrowDay

