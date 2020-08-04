CREATE TABLE [dbo].[Holiday]
(
  CalendarDate    DATE          NOT NULL,
  Country         char(3)       NOT NULL,
  HolidayName     NVARCHAR(100)  NULL, 
  HolidayNameEnglish VARCHAR(100) NULL , 
    [Region] VARCHAR(3) NULL , 
    CONSTRAINT [PK_Holidays] PRIMARY KEY ([Country], [CalendarDate])
)
