--Formating dates for reporting

DECLARE @var DATETIME2(2) = '1991-06-04 08:00:09'
DECLARE @string NVARCHAR(30) = '1991-06-04 09:00:09'
DECLARE @OldDateTime DATETIME = '1991-06-04 08:00:09'

SELECT CAST(@var AS NVARCHAR(30)) AS DateToString,
		CAST(@string AS DATETIME2(3)) AS StringToDate,
		CAST(@OldDateTime AS nvarchar(30)) AS OldDateToString

