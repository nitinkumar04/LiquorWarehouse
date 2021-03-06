CREATE TABLE [dbo].[CalendarDate]
(
  [CalendarDate]          date,
  [DayNumberOfYear]       as datepart(dayofyear, CalendarDate),
  [DayNumberOfQuarter]    as datediff(dd, dateadd(q, datediff(q, 0, CalendarDate),0), CalendarDate) + 1,
  [DayNumberOfMonth]      as day(CalendarDate),
  [DayNumberOfWeek]       as datepart(weekday, CalendarDate),
  [WeekdaySN]             as upper(substring(datename(weekday, CalendarDate), 1, 3)),
  [WeekdayLN]             as datename(weekday, CalendarDate),
  [WeekNumberOfYear]      as datepart(week, CalendarDate),
  [WeekSN]                as 'W' + convert(varchar, case when datepart(week, CalendarDate) > 9 then '' else '0' end + convert(varchar, datepart(week, CalendarDate))),
  [WeekLN]                as 'WK' + convert(varchar, case when datepart(week, CalendarDate) > 9 then ' ' else ' 0' end + convert(varchar, datepart(week, CalendarDate))),
  [MonthSN]               as upper(substring(datename(month, CalendarDate), 1, 3)),
  [MonthLN]               as datename(month, CalendarDate),
  [MonthNumberOfYear]     as month(CalendarDate),
  [MonthNumberOfQuarter]  as case when datepart(month, CalendarDate) % 3 <> 0 then datepart(month, CalendarDate) % 3 else 3 end,
  [MonthYear]             as substring(convert(char, CalendarDate, 112), 5, 2) + substring(convert(char, CalendarDate, 112), 1, 4),
  [QuarterSN]             as 'Q' + convert(varchar, datepart(quarter, CalendarDate)),
  [QuarterLN]             as 'QTR 0' + convert(varchar, datepart(quarter, CalendarDate)),
  [QuarterNumberOfYear]   as datepart(quarter, CalendarDate),
  [QuarterYear]           as '0' + convert(char(1), datepart(quarter, CalendarDate)) + convert(char(4), datepart(year, CalendarDate)),
  [Year]                  as year(CalendarDate),
  [YearWeek]              as convert(char(4), year(CalendarDate)) + case when datepart(week, CalendarDate) > 9 then '' else '0' end + convert(char(2), datepart(week, CalendarDate)),
  [YearMonth]             as substring(convert(char, CalendarDate, 112), 1, 6),
  [YearQuarter]           as convert(char(4), datepart(year, CalendarDate)) + '0' + convert(char(1), datepart(quarter, CalendarDate)),
  [YearWeekSN]            as 'CY' + convert(char(4), year(CalendarDate)) + case when datepart(week, CalendarDate) > 9 then '-W' else '-W0' end + convert(varchar, datepart(week, CalendarDate)),
  [YearWeekLN]            as 'CY' + convert(char(4), year(CalendarDate)) + case when datepart(week, CalendarDate) < 9 then ' WK 0' else ' WK ' end + convert(varchar, datepart(week, CalendarDate)),
  [YearMonthSN]           as 'CY' + convert(char(4), year(CalendarDate)) + case when Month(CalendarDate) < 10 then '-M0' else '-M' end + convert(varchar, month(CalendarDate)),
  [YearMonthMN]           as 'CY' + convert(char(4), year(CalendarDate)) + ' ' + upper(substring(datename(month, CalendarDate), 1, 3)),
  [YearMonthLN]           as 'CY' + convert(char(4), year(CalendarDate)) + ' ' + datename(month, CalendarDate),
  [YearQuarterSN]         as 'CY' + convert(char(4), year(CalendarDate)) + '-Q' + convert(char(1), datepart(quarter, CalendarDate)),
  [YearQuarterLN]         as 'CY' + convert(char(4), year(CalendarDate)) + ' QTR 0' + convert(char(1), datepart(quarter, CalendarDate)),
  [WeekDay]               as case when datepart(weekday, CalendarDate) between 2 and 6 then 1 else 0 end,
  [DateNumber]            as convert(int, convert(datetime, dateadd(dd, 1, CalendarDate))) -- Not sure why this has to have 1 added to it, but it's one less than it returns for convert(int, getdate()) for the same date
  CONSTRAINT [PK_CalendarDate] PRIMARY KEY ([CalendarDate]) 
)
