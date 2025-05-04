USE EconomicDB;

CREATE TABLE Government (
    ID INT PRIMARY KEY,
    Type_of_Government VARCHAR(20)
);

CREATE TABLE Country (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Region VARCHAR(50),
    Government_ID INT FOREIGN KEY REFERENCES Government(ID)
);

CREATE TABLE Sector (
    ID INT PRIMARY KEY,
    Name VARCHAR(20)
);

CREATE TABLE Business (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Revenue DECIMAL(18,2),
    Number_of_Employees INT,
    Country_ID INT FOREIGN KEY REFERENCES Country(ID),
    Sector_ID INT FOREIGN KEY REFERENCES Sector(ID)
);

CREATE TABLE Job_Creation_Program (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Country_ID INT FOREIGN KEY REFERENCES Country(ID),
    Sector_ID INT FOREIGN KEY REFERENCES Sector(ID)
);

CREATE TABLE Business_Program (
    ID INT PRIMARY KEY,
    Participation_Date DATE,
    Status VARCHAR(20),
    Jobs_Created INT,
    Incentive_Amount DECIMAL(18,2),
    Last_Updated TIMESTAMP,
    Job_Creation_Program_ID INT FOREIGN KEY REFERENCES Job_Creation_Program(ID),
    Business_ID INT FOREIGN KEY REFERENCES Business(ID)
);

CREATE TABLE Policy (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Type VARCHAR(50),
    Date_Implemented DATE,
    Country_ID INT FOREIGN KEY REFERENCES Country(ID)
);

CREATE TABLE Business_Policy (
    ID INT PRIMARY KEY,
    Date_Affected DATE,
    Impact_Description VARCHAR(50),
    Policy_ID INT FOREIGN KEY REFERENCES Policy(ID),
    Business_ID INT FOREIGN KEY REFERENCES Business(ID)
);

CREATE TABLE Inflation_Measure (
    ID INT PRIMARY KEY,
    Inflation_Rate DECIMAL(5,2),
    Date DATE,
    Country_ID INT FOREIGN KEY REFERENCES Country(ID)
);

CREATE TABLE Policy_Inflation (
    ID INT PRIMARY KEY,
    Effect_Description VARCHAR(20),
    Inflation_Measure_ID INT FOREIGN KEY REFERENCES Inflation_Measure(ID),
    Policy_ID INT FOREIGN KEY REFERENCES Policy(ID)
);