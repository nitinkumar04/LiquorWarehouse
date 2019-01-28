USE [master]
GO
CREATE LOGIN [Proximo_LiquorBarn] WITH PASSWORD=N'k39xj3!lkd', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [Proximo_LiquorBarn_1_0]
GO
CREATE USER [Proximo_LiquorBarn] FOR LOGIN [Proximo_LiquorBarn]
GO
USE [Proximo_LiquorBarn_1_0]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Proximo_LiquorBarn]
GO
USE [Proximo_LiquorBarn_1_0]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Proximo_LiquorBarn]
GO
USE [Proximo_LiquorBarn_1_0]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Proximo_LiquorBarn]
GO
USE [Proximo_LiquorBarn_1_0]
GO
ALTER ROLE [db_executor] ADD MEMBER [Proximo_LiquorBarn]
GO
USE [Proximo_LiquorBarnStage]
GO
CREATE USER [Proximo_LiquorBarn] FOR LOGIN [Proximo_LiquorBarn]
GO
USE [Proximo_LiquorBarnStage]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Proximo_LiquorBarn]
GO
USE [Proximo_LiquorBarnStage]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Proximo_LiquorBarn]
GO
USE [Proximo_LiquorBarnStage]
GO
ALTER ROLE [db_executor] ADD MEMBER [Proximo_LiquorBarn]
GO
