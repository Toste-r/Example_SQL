-- Генерируем столбец с 1000 случайных чисел, находим среднее число чудовища, выводим имя вина, которое нужно сжечь
SELECT Name_wine
FROM Wine
WHERE Feedstock_ID=(
    SELECT AVG(CHYDOVISHE)
    FROM
    (
        SELECT TOP 1000 ABS(CONVERT(INT, (CONVERT(BINARY(4), (NEWID()))))) % 1000 AS CHYDOVISHE
        FROM sysobjects A
        CROSS JOIN sysobjects B) AS CHTO_TI_TAKOE)
