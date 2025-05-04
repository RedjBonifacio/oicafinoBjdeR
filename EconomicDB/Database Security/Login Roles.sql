USE EconomicDB;

-- Logins
CREATE LOGIN EconomicAdmin WITH PASSWORD = 'economicadmin';
CREATE LOGIN EconomicAnalyst WITH PASSWORD = 'economicanalyst';
CREATE LOGIN DataEncoder WITH PASSWORD = 'dataencoder';

-- Users
CREATE USER EconomicAdminUser FOR LOGIN EconomicAdmin;
CREATE USER EconomicAnalystUser FOR LOGIN EconomicAnalyst;
CREATE USER DataEncoderUser FOR LOGIN DataEncoder;

-- Set Default Database
ALTER LOGIN EconomicAdmin WITH DEFAULT_DATABASE = EconomicDB;
ALTER LOGIN EconomicAnalyst WITH DEFAULT_DATABASE = EconomicDB;
ALTER LOGIN DataEncoder WITH DEFAULT_DATABASE = EconomicDB;

-- Role Assignments
ALTER ROLE db_owner ADD MEMBER EconomicAdminUser;
ALTER ROLE db_datareader ADD MEMBER EconomicAnalystUser;

-- Permissions for DataEncoder
GRANT INSERT, UPDATE ON dbo.Business TO DataEncoderUser;
GRANT INSERT, UPDATE ON dbo.Policy TO DataEncoderUser;
GRANT INSERT, UPDATE ON dbo.Job_Creation_Program TO DataEncoderUser;

-- Deny delete (restrictive)
DENY DELETE ON dbo.Business TO DataEncoderUser;

-- Optional strict read restriction
-- DENY SELECT ON dbo.Business TO DataEncoderUser;
