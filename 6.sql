-- Вывести названия вина, производителя, год, которые больше, чем год 200 вина
SELECT Name_wine, Producer, Year
FROM Wine JOIN Feedstock ON Wine.Feedstock_ID=Feedstock.Feedstock_ID
WHERE Feedstock.Year > ALL
( SELECT Feedstock.Year
FROM Feedstock
WHERE Feedstock_ID = '200')
