CREATE PROCEDURE [dbo].[PopulateFiscalDateTable] @fiscalyearstart varchar(10), @start varchar(10), @end varchar(10), @country char(3)
as
begin
  -- Convert parameters to dates
  declare @fiscalyearstartdate date, @startdate date, @enddate date
  set @fiscalyearstartdate = convert(date, @fiscalyearstart)
  set @startdate = convert(date, @start)
  set @enddate = convert(date, @end)

  -- Get the days offset
  declare @dayoffset int
  set @dayoffset = datediff(dd, convert(date, '1/1/' + convert(varchar, year(@fiscalyearstartdate))), @fiscalyearstartdate)


  -- Delete dates that already exist in the FiscalDate table
  delete from FiscalDate where FiscalDate between @startdate and @enddate

  insert into FiscalDate
    select 
    	CD.CalendarDate as FiscalDate,
	    FD.DayNumberOfYear,
	    FD.DayNumberOfQuarter,
	    CD.DayNumberOfMonth,
      CD.DayNumberOfWeek,
	    CD.WeekdaySN, 
	    CD.WeekdayLN,
	    FD.WeekNumberOfYear,
      FD.WeekSN,
      FD.WeekLN,
	    FD.MonthSN,
	    FD.MonthLN,
	    FD.MonthNumberOfYear,
	    FD.MonthNumberOfQuarter,
	    FD.MonthYear,
	    FD.QuarterSN,
	    FD.QuarterLN,
	    FD.QuarterNumberOfYear,
	    FD.QuarterYear,
      FD.[Year],
      FD.YearWeek,
      FD.YearMonth,
      CD.YearMonth,
      FD.YearQuarter,
      replace(FD.YearWeekSN, 'CY', 'FY'),
      replace(FD.YearWeekLN, 'CY', 'FY'),
      replace(FD.YearMonthSN, 'CY', 'FY'),
      replace(FD.YearMonthMN, 'CY', 'FY'),
      replace(FD.YearMonthLN, 'CY', 'FY'),
      replace(FD.YearQuarterSN, 'CY', 'FY'),
      replace(FD.YearQuarterLN, 'CY', 'FY'),
	    case when datepart(weekday, CD.CalendarDate) between 2 and 6 then 1 else 0 end,
      case when h.HolidayName is null then 0 else 1 end,
      h.HolidayName,
      h.HolidayNameEnglish,
      CD.DateNumber
    from Global..CalendarDate CD
      inner join Global..CalendarDate FD on dateadd(dd, @dayoffset, FD.CalendarDate) = CD.CalendarDate
      left outer join Global..Holiday h on CD.CalendarDate = h.CalendarDate and h.Country = @country
    where CD.CalendarDate between @startdate and @enddate
end


