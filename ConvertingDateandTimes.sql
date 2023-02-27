SELECT
		DATETIMEFROMPARTS(1918,11,11,05,45,17,995) AS DT, -- because DATETIME is only precise to a three milliseconds period, SQL Server rounds our result to the nearest.
		DATETIME2FROMPARTS(1918,11,11,05,45,17,0,0) AS DT20