-- Выводим Название вина и год, ID которых четное. Выводим дополнительно столбцы среднего АЛК и мин проц сахара
SELECT F.Feedstock_ID, Name_wine,F.Year, AVG(Percentage_of_alcohol) AS AvgProcAL, MIN(Percentage_of_sugar) AS MinProcSug
FROM Feedstock F JOIN dbo.Wine W ON F.Feedstock_ID=W.Feedstock_ID JOIN Alcohol_sugar A ON A.Alcohol_sugar_ID=W.Alcohol_sugar_ID
WHERE F.Feedstock_ID % 2 = 0
GROUP BY Producer, Name_wine, F.Year, F.Feedstock_ID
ORDER BY F.Feedstock_ID 