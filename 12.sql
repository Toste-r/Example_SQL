-- Вывести ID вина, имя которого 'Абрау-Дюрсо' и добавка СЛИВА
SELECT F.Feedstock_ID
FROM Feedstock F JOIN
(
    SELECT Name_wine,Feedstock_ID
    FROM Wine
    WHere Name_wine LIKE 'Абрау-Дюрсо'
) AS CTO ON CTO.Feedstock_ID = F.Feedstock_ID
WHERE Additives = 'Слива'
