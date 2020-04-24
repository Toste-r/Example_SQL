-- Вывести в отдельный столбец вино, на который аллергия
SELECT Name_wine, Additives,
    CASE 
        WHEN Feedstock.Additives LIKE 'Клубника' THEN 'Аллергия'
        WHEN Feedstock.Additives LIKE 'Изюм' THEN 'Аллергия'
        ELSE 'Нет аллергии'
    END Alergia
FROM dbo.Wine JOIN Feedstock ON dbo.Wine.Feedstock_ID = Feedstock.Feedstock_ID