-- Вывести названия вина, процент алкоголя и дополнительные таблицы с максимальным и минимальным процентом алкоголя
SELECT Name_wine, Percentage_of_alcohol,
    (
        SELECT MIN(Percentage_of_alcohol)
        FROM Alcohol_sugar
    ) AS MinP,
    (
        SELECT MAX(Percentage_of_alcohol)
        FROM Alcohol_sugar
    ) AS MaxP
FROM Wine JOIN Alcohol_sugar ON Wine.Alcohol_sugar_ID=Alcohol_sugar.Alcohol_sugar_ID
