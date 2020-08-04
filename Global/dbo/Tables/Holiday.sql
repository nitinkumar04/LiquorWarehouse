CREATE TABLE [dbo].[Holiday]
(
  CalendarDate    DATE          NOT NULL,
  Country         char(3)       NOT NULL,
  HolidayName     NVARCHAR(100)  NULL, 
  HolidayNameEnglish VARCHAR(100) NOT NULL DEFAULT "Public Holiday", 
    [Region] VARCHAR(3) NOT NULL DEFAULT "All", 
    CONSTRAINT [PK_Holidays] PRIMARY KEY ([Country], [CalendarDate], [HolidayNameEnglish])
)
