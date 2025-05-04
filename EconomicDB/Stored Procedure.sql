-- Stored Procedure 1: Add a Business
CREATE PROCEDURE sp_AddBusiness
    @Name VARCHAR(50),
    @Revenue DECIMAL(18,2),
    @Number_of_Employees INT,
    @Country_ID INT,
    @Sector_ID INT
AS
BEGIN
    INSERT INTO Business (Name, Revenue, Number_of_Employees, Country_ID, Sector_ID)
    VALUES (@Name, @Revenue, @Number_of_Employees, @Country_ID, @Sector_ID);
END;
GO

-- Stored Procedure 2: Register a Business to a Program
CREATE PROCEDURE sp_RegisterBusinessToProgram
    @Participation_Date DATE,
    @Status VARCHAR(20),
    @Jobs_Created INT,
    @Incentive_Amount DECIMAL(18,2),
    @Job_Creation_Program_ID INT,
    @Business_ID INT
AS
BEGIN
    INSERT INTO Business_Program (Participation_Date, Status, Jobs_Created, Incentive_Amount, Job_Creation_Program_ID, Business_ID)
    VALUES (@Participation_Date, @Status, @Jobs_Created, @Incentive_Amount, @Job_Creation_Program_ID, @Business_ID);
END;
GO

-- Stored Procedure 3: Add a Policy and Record its Effect on Inflation
CREATE PROCEDURE sp_AddPolicyEffect
    @PolicyName VARCHAR(50),
    @PolicyType VARCHAR(50),
    @Date_Implemented DATE,
    @Country_ID INT,
    @Inflation_Rate DECIMAL(5,2),
    @Effect_Description VARCHAR(20),
    @EffectDate DATE
AS
BEGIN
    DECLARE @PolicyID INT, @InflationID INT;

    INSERT INTO Policy (Name, Type, Date_Implemented, Country_ID)
    VALUES (@PolicyName, @PolicyType, @Date_Implemented, @Country_ID);

    SET @PolicyID = SCOPE_IDENTITY();

    INSERT INTO Inflation_Measure (Inflation_Rate, Date, Country_ID)
    VALUES (@Inflation_Rate, @EffectDate, @Country_ID);

    SET @InflationID = SCOPE_IDENTITY();

    INSERT INTO Policy_Inflation (Effect_Description, Inflation_Measure_ID, Policy_ID)
    VALUES (@Effect_Description, @InflationID, @PolicyID);
END;
GO

-- Stored Procedure 4: Get Businesses by Country
CREATE PROCEDURE sp_GetBusinessesByCountry
    @CountryID INT
AS
BEGIN
    SELECT B.ID, B.Name, B.Revenue, B.Number_of_Employees, S.Name AS Sector
    FROM Business B
    JOIN Sector S ON B.Sector_ID = S.ID
    WHERE B.Country_ID = @CountryID;
END;
GO

EXEC sp_AddBusiness 'NewCo', 12000000.00, 200, 1, 3;
