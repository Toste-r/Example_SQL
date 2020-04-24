-- CREATE DATABASE [DopZ]
-- GO
USE [DopZ]
GO
-- CREATE TABLE Table1 (
--     id INT ,
--     var1 NVARCHAR(4),
--     valid_from_dttm DATE,
--     valid_to_dttm DATE
-- )
-- CREATE TABLE Table2 (
--     id INT ,
--     var2 NVARCHAR(4),
--     valid_from_dttm DATE,
--     valid_to_dttm DATE
-- )
-- INSERT INTO Table1 
-- VALUES (1,'A','2018-09-01','2018-09-15')
-- INSERT INTO Table1 
-- VALUES (1,'B','2018-09-16','5999-12-31')
-- INSERT INTO Table2 
-- VALUES (1,'A','2018-09-01','2018-09-18')
-- INSERT INTO Table2 
-- VALUES (1,'B','2018-09-19','5999-12-31')
SELECT Table1.id,Table1.var1,Table2.var2,
CASE
    WHEN Table1.valid_from_dttm >= Table2.valid_from_dttm THEN Table1.valid_from_dttm
    ELSE Table2.valid_from_dttm
END valid_from_dttm,
CASE
    WHEN Table1.valid_to_dttm <= Table2.valid_to_dttm THEN Table1.valid_to_dttm
    ELSE Table2.valid_to_dttm
END valid_to_dttm
FROM Table1 JOIN Table2 ON Table1.id=Table2.id
WHERE Table1.valid_from_dttm <= Table2.valid_to_dttm
AND Table2.valid_from_dttm <= Table1.valid_to_dttm