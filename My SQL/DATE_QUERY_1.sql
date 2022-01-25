--SELECT SYSDATETIME()
DECLARE 
    @start_dt DATETIME2= '1998-11-29 00:00:00.0000000', 
    @end_dt DATETIME2= '2022-01-17 15:12:35.2001874';

SELECT 
    DATEDIFF(year, @start_dt, @end_dt) diff_in_year, 
    DATEDIFF(quarter, @start_dt, @end_dt) diff_in_quarter, 
    DATEDIFF(month, @start_dt, @end_dt) diff_in_month, 
    DATEDIFF(dayofyear, @start_dt, @end_dt) diff_in_dayofyear, 
    DATEDIFF(day, @start_dt, @end_dt) diff_in_day, 
    DATEDIFF(week, @start_dt, @end_dt) diff_in_week, 
    DATEDIFF(hour, @start_dt, @end_dt) diff_in_hour, 
    DATEDIFF(minute, @start_dt, @end_dt) diff_in_minute, 
    DATEDIFF(second, @start_dt, @end_dt) diff_in_second; 
    --DATEDIFF(millisecond, @start_dt, @end_dt) diff_in_millisecond;
