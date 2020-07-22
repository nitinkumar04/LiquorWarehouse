CREATE TABLE [dbo].[Environment]
(
  EnvironmentID       int identity(1,1) not null,
  EnvironmentName     varchar(100) not null, 
    CONSTRAINT [PK_Environment] PRIMARY KEY ([EnvironmentID])
)
