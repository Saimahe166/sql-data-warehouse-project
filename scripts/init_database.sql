/* 
============================================================
Create Database and Schemnas
=============================================================
Script Purpose:
  This script creates a new database named DataWarehouse after checking if it already exists.
  If the database exists , it is dropped and recreated. additionally , the script sets up three schemas 
  within the database : 'bronze', 'silver', and 'gold'.

Warning:
  Running this script will drop the entie ' datawarehouse' if it exists .
  All data in the databse will be permentaly deleted. proceed with caution.
  and ensure you have proper backups before running this script.
*/

USE master;
GO
--- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWareHOUSE SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database

create database DataWarehouse;
GO

USE DataWarehouse;
GO 
--  Create Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
