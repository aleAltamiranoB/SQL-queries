--OFFSETS
DECLARE @SomeDate DATETIMEOFFSET = '1992-10-24 12:15:00 -03:00'

SELECT @SomeDate AS Date,
		SWITCHOFFSET(@SomeDate, '-04:00') AS BrazilDate  --I guess jaja

DECLARE @SimpleDate DATETIME2(3) = '2019-04-10 12:59:02.390'

SELECT TODATETIMEOFFSET(@SimpleDate, '-04:00') AS Form1,
		SWITCHOFFSET(@SimpleDate, '-05:00') AS Form2


--Uso complejo de TODATETIMEOFFSET

DECLARE @Example DATETIME2(3) = '2016-09-04 02:28:29.681' --El servidor orginal esta seteado en UTF-5
SELECT 
	TODATETIMEOFFSET(
	DATEADD(HOUR, 7, @Example), '+02:00') AS BonnTime --Para llevar esto a una UTF +2 de Bonn, es necesario sumar las 7 hs de diferencia y setear el dato como offset

--DISCOVERING TIME ZONES

SELECT tzi.name, tzi.current_utc_offset,
		tzi.is_currently_dst
	FROM sys.time_zone_info tzi
	WHERE tzi.name LIKE'%Argentina%'