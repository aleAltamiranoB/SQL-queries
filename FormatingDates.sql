--Formating dates for reporting --ANSI Form

DECLARE @var DATETIME2(2) = '1991-06-04 08:00:09'
DECLARE @string NVARCHAR(30) = '1991-06-04 09:00:09'
DECLARE @OldDateTime DATETIME = '1991-06-04 08:00:09'

SELECT CAST(@var AS NVARCHAR(30)) AS DateToString,
		CAST(@string AS DATETIME2(3)) AS StringToDate,
		CAST(@OldDateTime AS nvarchar(30)) AS OldDateToString

-- Convert Function 

SELECT CONVERT(nvarchar(30), @var, 0) AS DefaultForm  --Jun  4 1991  8:00AM
		,CONVERT(nvarchar(30), @var, 1) AS US_mdy --06/04/91
		,CONVERT(nvarchar(30), @var, 101) AS US_mdyyy --06/04/1991
		,CONVERT(nvarchar(30), @var, 120) AS ODCB_sec --1991-06-04 08:00:09
		,CONVERT(nvarchar(30), @var, 3) AS ODCB_sec --d/m/y

-- FORMAT() Function -- Only in SQL Server
-- Takes three parameters:
-- Input value
-- format code
-- optional culture
-- More performance expensive than CONVERT and CAST function.

SELECT FORMAT(@var, 'd', 'en-US') AS US_d
		,FORMAT(@var, 'yyyy-mm-dd', 'en-US') AS Ymd_US


		

