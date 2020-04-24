-- CREATE TABLE Country (
--     Country_ID INT ,
--     Country_name NVARCHAR(30),
--     Region NVARCHAR (30)
-- )
-- CREATE TABLE Feedstock (
--     Feedstock_ID INT ,
--     Variety_of_grapes NVARCHAR(60) ,
--     Additives NVARCHAR(60) ,
--     Year NVARCHAR (30)
-- )
-- CREATE TABLE Alcohol_sugar (
--     Alcohol_sugar_ID INT ,
--     Percentage_of_alcohol FLOAT,
--     Percentage_of_sugar FLOAT
-- )
-- CREATE TABLE Wine (
--    Feedstock_ID INT ,
--    Alcohol_sugar_ID INT ,
--    Name_wine NVARCHAR (60) ,
--    Producer NVARCHAR (120)
-- )

-- BULK INSERT Feedstock
-- FROM '/feedstock.txt'
-- WITH (DATAFILETYPE = 'char' , FIRSTROW = 1 , FIELDTERMINATOR = ' ; ', ROWTERMINATOR = '0x0a')

-- BULK INSERT Alcohol_sugar
-- FROM '/variety.txt'
-- WITH (DATAFILETYPE = 'char' , FIRSTROW = 1 , FIELDTERMINATOR = ' ; ', ROWTERMINATOR = '0x0a')

-- BULK INSERT Wine
-- FROM '/wine.txt'
-- WITH (DATAFILETYPE = 'char' , FIRSTROW = 1 , FIELDTERMINATOR = ' ; ', ROWTERMINATOR = '0x0a')

-- BULK INSERT Country
-- FROM '/country.txt'
-- WITH (DATAFILETYPE = 'char' , FIRSTROW = 1 , FIELDTERMINATOR = ' ; ', ROWTERMINATOR = '0x0a')

-- DROP TABLE Country
-- GO

SELECT * FROM Country
SELECT * FROM Feedstock
SELECT * FROM Alcohol_sugar
SELECT * FROM WINE

