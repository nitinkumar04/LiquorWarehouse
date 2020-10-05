CREATE PROCEDURE [dbo].[PopulateFiscalDateTable] @fiscalmonthadjust int, @start varchar(10), @end varchar(10), @country char(3)
as
begin
  -- Convert parameters to dates
  declare @fiscalyearstartdate date, @startdate date, @enddate date
  set @fiscalyearstartdate = dateadd(MM, @fiscalmonthadjust, '1/1/2018')
  set @startdate = convert(date, @start)
  set @enddate = convert(date, @end)

  -- Get the days offset
  declare @dayoffset int, @weekoffset int
  set @dayoffset = datediff(DD, convert(date, '1/1/' + convert(varchar, year(@fiscalyearstartdate))), @fiscalyearstartdate) * -1

  -- Delete dates that already exist in the FiscalDate table
  delete from FiscalDate where FiscalDate between @startdate and @enddate

  insert into FiscalDate (FiscalDate, DayNumberOfYear, DayNumberOfQuarter, DayNumberOfMonth, DayNumberOfWeek, WeekdaySN, WeekdayLN, WeekNumberOfYear, MonthSN, MonthLN, MonthNumberOfYear, MonthNumberOfQuarter, QuarterNumberOfYear,
    [Year], CalendarYearMonth, [WeekDay], Holiday, HolidayName, HolidayNameEnglish, DateNumber)
    select 
    	CD.CalendarDate as FiscalDate,
      case
        when datepart(mm, CD.CalendarDate) >= datepart(mm, @fiscalyearstartdate) and datepart(yy, dateadd(dd, @dayoffset, CD.CalendarDate)) % 4 <> 0
          then datepart(dayofyear, CD.CalendarDate) + @dayoffset
        when datepart(mm, CD.CalendarDate) >= datepart(mm, @fiscalyearstartdate) and datepart(yy, dateadd(dd, @dayoffset, CD.CalendarDate)) % 4 = 0
          then datepart(dayofyear, CD.CalendarDate) + @dayoffset - 1
        else datepart(dayofyear, CD.CalendarDate) + @dayoffset + 365
      end as DayNumberOfYear,
	    datediff(dd, dateadd(q, datediff(q, 0, CD.CalendarDate), -1), CD.CalendarDate)  as DayNumberOfQuarter,
	    CD.DayNumberOfMonth,
      CD.DayNumberOfWeek,
	    CD.WeekdaySN, 
	    CD.WeekdayLN,
      case 
        when datepart(yy, dateadd(dd, @dayoffset, CD.CalendarDate)) % 4 = 0 and datepart(dayofyear, CD.CalendarDate) + @dayoffset = 1
          then datepart(week, datediff(dd, (@dayoffset - 1) * -1, CD.CalendarDate))
        else datepart(week, datediff(dd, (@dayoffset) * -1, CD.CalendarDate))
      end as WeekNumberOfYear,
	    CD.MonthSN,
	    CD.MonthLN,
      datepart(MM, dateadd(MM, @fiscalmonthadjust * -1, convert(date, convert(varchar, datepart(MM, CD.CalendarDate)) + '/1/' + convert(varchar, datepart(yy, CD.CalendarDate))))) as MonthNumberOfYear,
      case 
        when datepart(MM, dateadd(MM, @fiscalmonthadjust, convert(date, convert(varchar, datepart(MM, CD.CalendarDate)) + '/1/' + convert(varchar, datepart(yy, CD.CalendarDate))))) % 3 <> 0 
          then datepart(MM, dateadd(MM, @fiscalmonthadjust, convert(date, convert(varchar, datepart(MM, CD.CalendarDate)) + '/1/' + convert(varchar, datepart(yy, CD.CalendarDate))))) % 3
        else 3 
      end as MonthNumberOfQuarter, 
      datepart(Q, dateadd(MM, @fiscalmonthadjust * -1, convert(date, convert(varchar, datepart(MM, CD.CalendarDate)) + '/1/' + convert(varchar, datepart(yy, CD.CalendarDate))))) as QuarterNumberOfYear,
      datepart(yy, dateadd(mm, @fiscalmonthadjust * -1, CD.CalendarDate)) as [Year],
      CD.YearMonth,
	    CD.WeekDay,
      case when h.HolidayName is null then 0 else 1 end,
      h.HolidayName,
      h.HolidayNameEnglish,
      CD.DateNumber
    from Global..CalendarDate CD
      left outer join Global..Holiday h on CD.CalendarDate = h.CalendarDate and h.Country = @country
    where CD.CalendarDate between @startdate and @enddate
    order by FiscalDate
end