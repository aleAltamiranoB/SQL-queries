--Datetime in SQL Server

SELECT GETDATE() AS DateTime_LTz, GETUTCDATE() AS DateTime_UTC, 
		SYSDATETIME() AS DateTime2_LTz, SYSUTCDATETIME() AS DateTime2_UTC


DECLARE @time_var DATETIME2(3) = '2019-03-01 08:17:19.332'

-- Date Parts

SELECT YEAR(@time_var) AS year_var, MONTH(@time_var) AS month_var,
		DAY(@time_var) AS day_var 


SELECT DATEPART(YEAR, @time_var) AS TheYear, DATENAME(MONTH, @time_var) AS NameMonth,
		DATEPART(DAYOFYEAR, @time_var) AS day_of_year, DATEPART(WEEKDAY, @time_var) AS weekday_var

--Adding and substracting dates

SELECT  DATEADD(DAY, 1, GETDATE()) AS Tomorrow, DATEADD(DAY, -1, GETDATE()) AS Yesterday

--Comparing Dates

SELECT DATEDIFF(SECOND, @time_var, GETDATE()) AS seconds_diff, 
		DATEDIFF(MINUTE, @time_var, GETDATE()) AS minutes_diff,
		DATEDIFF(MONTH, @time_var, GETDATE()) AS months_diff
