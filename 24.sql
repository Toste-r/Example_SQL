-- Вывести имя вина, добавку и максимальный ID для данного названия вина
SELECT Name_wine,Additives,
    MAX(F.Feedstock_ID) OVER(PARTITION BY W.Name_wine) AS D 
FROM dbo.Wine W JOIN Feedstock F ON W.Feedstock_ID=F.Feedstock_ID

-- SELECT f.Feedstock_ID, F.Additives
-- FROM dbo.Wine W JOIN Feedstock F ON W.Feedstock_ID=F.Feedstock_ID
-- WHERE Name_wine LIKE 'Абрау-Дюрсо'
