USE EconomicDB;

INSERT INTO Government (ID, Type_of_Government) VALUES
(1, 'Republic'),
(2, 'Federal'),
(3, 'Constitutional'),
(4, 'Monarchy'),
(5, 'Socialist'),
(6, 'Republic'),
(7, 'Federal'),
(8, 'Parliamentary'),
(9, 'Democratic'),
(10, 'Republic');

INSERT INTO Country (ID, Name, Region, Government_ID) VALUES
(1, 'Philippines', 'Southeast Asia', 1),
(2, 'United States', 'North America', 2),
(3, 'Japan', 'East Asia', 3),
(4, 'United Kingdom', 'Europe', 4),
(5, 'China', 'East Asia', 5),
(6, 'Australia', 'Oceania', 2),
(7, 'Canada', 'North America', 2),
(8, 'Germany', 'Europe', 3),
(9, 'South Korea', 'East Asia', 3),
(10, 'Indonesia', 'Southeast Asia', 1);

INSERT INTO Sector (ID, Name) VALUES
(1, 'Agriculture'),
(2, 'Manufacturing'),
(3, 'Technology'),
(4, 'Retail'),
(5, 'Finance'),
(6, 'Healthcare'),
(7, 'Energy'),
(8, 'Education'),
(9, 'Construction'),
(10, 'Hospitality');

INSERT INTO Business (ID, Name, Revenue, Number_of_Employees, Country_ID, Sector_ID) VALUES
(1, 'Jollibee Foods Corp', 180000000.00, 15000, 1, 4),
(2, 'Ayala Corporation', 250000000.00, 10000, 1, 5),
(3, 'SM Investments', 300000000.00, 12000, 1, 4),
(4, 'Tesla Inc.', 500000000.00, 7000, 2, 3),
(5, 'Samsung Electronics', 600000000.00, 9000, 9, 3),
(6, 'Hyundai Construction', 200000000.00, 8000, 9, 9),
(7, 'BPI', 150000000.00, 5000, 1, 5),
(8, 'Google', 800000000.00, 10000, 2, 3),
(9, 'Unilever', 400000000.00, 6000, 4, 2),
(10, 'Bayanihan Farms', 5000000.00, 200, 1, 1);

INSERT INTO Job_Creation_Program (ID, Name, Country_ID, Sector_ID) VALUES
(1, 'Build Build Build', 1, 9),
(2, 'Train 4 Work', 1, 3),
(3, 'AgriBoost', 1, 1),
(4, 'TechNation', 2, 3),
(5, 'EcoWorks', 6, 7),
(6, 'HealthPlus', 7, 6),
(7, 'FutureSkills', 8, 8),
(8, 'RetailReady', 10, 4),
(9, 'GrowMore', 5, 1),
(10, 'GreenCity', 9, 9);

INSERT INTO Business_Program (ID, Participation_Date, Status, Jobs_Created, Incentive_Amount, Job_Creation_Program_ID, Business_ID) VALUES
(1, '2022-06-01', 'Active', 500, 1000000.00, 1, 1),
(2, '2022-08-15', 'Completed', 300, 750000.00, 2, 2),
(3, '2023-01-10', 'Active', 450, 500000.00, 3, 3),
(4, '2023-03-20', 'Active', 200, 1200000.00, 4, 4),
(5, '2022-11-05', 'Completed', 350, 600000.00, 5, 5),
(6, '2023-02-25', 'Active', 400, 700000.00, 6, 6),
(7, '2022-09-12', 'Completed', 150, 450000.00, 7, 7),
(8, '2023-05-08', 'Active', 500, 950000.00, 8, 8),
(9, '2022-10-30', 'Completed', 200, 400000.00, 9, 9),
(10, '2023-04-18', 'Active', 100, 250000.00, 10, 10);

INSERT INTO Policy (ID, Name, Type, Date_Implemented, Country_ID) VALUES
(1, 'Rice Tariffication Law', 'Agriculture', '2019-03-05', 1),
(2, 'Build Build Build', 'Infrastructure', '2017-01-01', 1),
(3, 'TechBoost Initiative', 'Technology', '2020-06-20', 2),
(4, 'Green Energy Act', 'Energy', '2021-09-15', 6),
(5, 'Healthcare Reform', 'Healthcare', '2022-01-12', 7),
(6, 'Digital Economy Act', 'Technology', '2021-11-01', 8),
(7, 'Free Tuition Act', 'Education', '2017-08-03', 1),
(8, 'Retail Support Fund', 'Retail', '2020-04-01', 10),
(9, 'Agricultural Modernization', 'Agriculture', '2021-07-01', 5),
(10, 'Smart Cities Program', 'Technology', '2022-03-01', 9);

INSERT INTO Business_Policy (ID, Date_Affected, Impact_Description, Policy_ID, Business_ID) VALUES
(1, '2019-04-01', 'Lower Tariffs', 1, 10),
(2, '2018-01-05', 'Infrastructure Support', 2, 1),
(3, '2021-07-15', 'Tech Grants', 3, 4),
(4, '2021-10-20', 'Energy Subsidy', 4, 5),
(5, '2022-03-01', 'Health Benefits', 5, 6),
(6, '2021-12-01', 'Digital Support', 6, 8),
(7, '2018-09-01', 'Free Education Support', 7, 7),
(8, '2020-05-01', 'Retail Recovery', 8, 3),
(9, '2021-08-01', 'Farm Support', 9, 10),
(10, '2022-04-15', 'Smart Infrastructure', 10, 5);

INSERT INTO Inflation_Measure (ID, Inflation_Rate, Date, Country_ID) VALUES
(1, 4.50, '2022-06-01', 1),
(2, 2.30, '2022-06-01', 2),
(3, 0.50, '2022-06-01', 3),
(4, 9.20, '2022-06-01', 4),
(5, 2.80, '2022-06-01', 5),
(6, 3.10, '2022-06-01', 6),
(7, 2.20, '2022-06-01', 7),
(8, 1.80, '2022-06-01', 8),
(9, 2.60, '2022-06-01', 9),
(10, 3.40, '2022-06-01', 10);

INSERT INTO Policy_Inflation (ID, Effect_Description, Inflation_Measure_ID, Policy_ID) VALUES
(1, 'Reduced', 1, 1),
(2, 'Boosted', 2, 3),
(3, 'Stabilized', 3, 4),
(4, 'Increased', 4, 5),
(5, 'Reduced', 5, 9),
(6, 'Boosted', 6, 2),
(7, 'Stabilized', 7, 5),
(8, 'Increased', 8, 8),
(9, 'Reduced', 9, 10),
(10, 'Stabilized', 10, 6);