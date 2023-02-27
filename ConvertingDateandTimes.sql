SELECT
		DATETIMEFROMPARTS(1918,11,11,05,45,17,995) AS DT, -- Because DATETIME is only precise to a three milliseconds period, SQL Server rounds our result to the nearest.
		DATETIME2FROMPARTS(1918,11,11,05,45,17,0,0) AS DT20 --DATETIME2 types allow us to choose our desired precision
		, DATETIME2FROMPARTS(1918,11,11,05,45,17,995,3) AS DT23
		,DATETIME2FROMPARTS(1918,11,11,05,45,17,9951234,7) AS DT27

-- Working with OFFSETS

SELECT
		DATETIMEOFFSETFROMPARTS(2009,08,14,21,00,00,0,5,30,0) AS IST
		--DATETIMEOFFSETFROMPARTS(year, month,day, hour, minute,second,fraction,hour_offset,minute_offset,precision)
		,DATETIMEOFFSETFROMPARTS(2009,08,14,21,00,00,0,5,30,0) AT TIME ZONE 'UTC' AS UTC


