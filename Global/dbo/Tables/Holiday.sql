CREATE TABLE [dbo].[Holiday]
(
  CalendarDate    DATE          NOT NULL,
  Country         char(3)       NOT NULL,
  HolidayName     varchar(100)  NULL, 
  HolidayNameEnglish VARCHAR(100) NULL, 
    CONSTRAINT [PK_Holidays] PRIMARY KEY ([Country], [CalendarDate])
)
