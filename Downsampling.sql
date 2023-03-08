--DOWNSAMPLING AND UPSAMPLING DATA

DECLARE @SomeDate DATETIME2
DECLARE @Hours INTEGER
SET @SomeDate = '2019-08-11 06:14:29.990'

--Downsampling is another term for changing to a coarser grain
-- For Example we can cast our DATETIME type to a date type

SELECT CAST(@SomeDate AS DATE) AS SomeDateDate

--Further downsampling

SET @Hours = DATEDIFF(HOUR, 0, @SomeDate)

SELECT 
		@SomeDate as FullDate,
		@Hours AS HoursInitialtoDate,
		DATEADD(HOUR, DATEDIFF(HOUR,0, @SomeDate), 0) AS SomeDATE -- Final Result it's a nearest hoour
		


		 
		




