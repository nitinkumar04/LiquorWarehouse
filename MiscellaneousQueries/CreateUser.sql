/**********************
Instructions:
  1. Search and Replace <client> to the client name (NOT the SF login, for example, client name is Proximo, not Proximo@greatvines.com)
  2. Search and Replace <version> with the version of the database that the client will run
  3. DO NOT SAVE THIS FILE!!!!
**********************/
USE [master]
GO
CREATE LOGIN [<client>] WITH PASSWORD=N'k39xj3!lkd', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [<client>_LiquorWarehouseStage_<version>]
GO
CREATE USER [<client>] FOR LOGIN [<client>]
GO
ALTER ROLE [db_datareader] ADD MEMBER [<client>]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [<client>]
GO
ALTER ROLE [db_executor] ADD MEMBER [<client>]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [<client>]
GO
