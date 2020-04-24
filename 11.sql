-- Средний год, с
SELECT Alcohol_sugar_ID,
    SUM(Alcohol_sugar.Percentage_of_alcohol) AS AVARAGE
INTO #GOD
FROM Alcohol_sugar
GROUP BY Alcohol_sugar_ID