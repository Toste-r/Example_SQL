-- Вывести номера и производителей, ко торые производят вино "Кастеро" и начинаются на букву "К"
SELECT DISTINCT Producer, Feedstock_ID
FROM Wine AS WP
WHERE Name_wine='Кастеро' AND
EXISTS (
    SELECT Producer
    FROM Wine
    Where Producer LIKE 'К%' AND
    Producer = WP.Producer
)
