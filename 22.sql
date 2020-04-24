-- Средний сахар в кратных ID
WITH CTE (alcohol, sugar) AS
(
    SELECT Percentage_of_alcohol, Percentage_of_sugar
    FROM Alcohol_sugar
    WHERE Alcohol_sugar_ID % 2 = 0
)
SELECT AVG(sugar) AS 'Средний сахар' 
FROM CTE