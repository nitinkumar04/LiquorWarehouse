CREATE TABLE [GDOutTest].[TestResult]
(
  TestResultID        int          identity(1,1),
  Tablename           varchar(100) not null,
  ErrorRowCount       int          not null, 
    CONSTRAINT [PK_TestResult] PRIMARY KEY ([TestResultID])
)
