﻿CREATE TABLE [dbo].[FiscalDate](
	[FiscalDate] [date] NOT NULL,
	[DayNumberOfYear] [int] NOT NULL,
	[DayNumberOfQuarter] [int] NOT NULL,
	[DayNumberOfMonth] [int] NOT NULL,
	[DayNumberOfWeek] [int] NOT NULL,
	[WeekdaySN] [char](3) NOT NULL,
	[WeekdayLN] [varchar](9) NOT NULL,
	[WeekNumberOfYear] [int] NOT NULL,
	[WeekSN]  AS 'W' + CONVERT(varchar, case when WeekNumberOfYear > 9 then '' else '0' end + CONVERT(varchar, WeekNumberOfYear)),
	[WeekLN]  AS 'WK' + CONVERT(varchar, case when WeekNumberOfYear > 9 then ' ' else ' 0' end + CONVERT(varchar, WeekNumberOfYear)),
	[MonthSN] [char](3) NOT NULL,
	[MonthLN] [varchar](9) NOT NULL,
	[MonthNumberOfYear] [int] NOT NULL,
	[MonthNumberOfQuarter] [int] NOT NULL,
	[MonthYear]  AS CONVERT(varchar, case when MonthNumberOfYear < 10 then '0' else '' end) + CONVERT(varchar, MonthNumberOfYear) + CONVERT(varchar, [Year]),
	[QuarterSN]  AS 'Q' + CONVERT(varchar, QuarterNumberOfYear),
	[QuarterLN]  AS 'QTR 0' + CONVERT(varchar, QuarterNumberOfYear),
	[QuarterNumberOfYear] [int] NOT NULL,
	[QuarterYear]  AS '0'+ CONVERT(char(1), QuarterNumberOfYear) + CONVERT(char(4), [Year]),
	[Year] [int] NOT NULL,
	[YearWeek]  AS CONVERT(char(4), [Year]) + case when WeekNumberOfYear > 9 then '' else '0' end + CONVERT(char(2), WeekNumberOfYear),
	[YearMonth]  AS CONVERT(char(4), [Year]) + case when MonthNumberOfYear < 10 then '0' else '' end + CONVERT(char(2), MonthNumberOfYear),
	[CalendarYearMonth] [int] NOT NULL,
	[YearQuarter]  AS CONVERT(char(4), [Year]) + '0'  + CONVERT(char(1), QuarterNumberOfYear),
	[YearWeekSN]  AS 'FY' + CONVERT([char](4), [Year]) + '-W' + CONVERT(varchar, case when WeekNumberOfYear > 9 then '' else '0' end + CONVERT(varchar, WeekNumberOfYear)),
	[YearWeekLN]  AS 'FY' + CONVERT([char](4), [Year]) + ' WK ' + CONVERT(varchar, case when WeekNumberOfYear > 9 then '' else '0' end + CONVERT(varchar, WeekNumberOfYear)),
	[YearMonthSN]  AS 'FY' + CONVERT([char](4), [Year]) + '-M' + CONVERT(varchar, case when MonthNumberOfYear < 10 then '0' else '' end) + CONVERT(varchar, MonthNumberOfYear),
	[YearMonthMN]  AS 'FY' + CONVERT([char](4), [Year]) + ' ' + MonthSN,
	[YearMonthLN]  AS 'FY' + CONVERT([char](4), [Year]) + ' ' + MonthLN,
	[YearQuarterSN]  AS 'FY' + CONVERT([char](4), [Year]) + '-Q' + CONVERT(varchar, QuarterNumberOfYear),
	[YearQuarterLN]  AS 'FY' + CONVERT([char](4), [Year]) + ' QTR 0' + CONVERT(varchar, QuarterNumberOfYear),
	[WeekDay] [bit] NOT NULL,
	[Holiday] [bit] NOT NULL,
	[HolidayName] [nvarchar](100) NULL,
	[HolidayNameEnglish] [varchar](100) NULL,
	[DateNumber] [int] NOT NULL,
 CONSTRAINT [PK_FiscalDate] PRIMARY KEY CLUSTERED 
(
	[FiscalDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]