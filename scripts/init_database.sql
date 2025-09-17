/*
==================================================
Create Database and Schemas
==================================================
What this script does:
	It makes a new database called 'DataWarehouse'.
	If that database is already there, it deletes it first and then makes it again.
	Inside the database, it also makes three schemas: 'bronze', 'silver', and 'gold'.

Warning:
	If you run this script, it will remove the whole 'DataWarehouse' database if it already exists.
	That means all data inside it will be lost forever.
	Make sure you have a backup before running this.
*/

USE master;
GO

IF EXISTS (SELECT 1 from sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
