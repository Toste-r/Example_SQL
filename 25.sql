-- Вывести ID вина, имя которого 'Абрау-Дюрсо' и добавка СЛИВА
-- INSERT INTO Country 
--     SELECT Country_ID,Country_name,Region
--     FROM Country
--     WHERE Country_ID = 1000
-- SELECT Country_ID,
--   ROW_NUMBER() OVER(PARTITION BY Country_ID
--                     ORDER BY (SELECT NULL)) AS n
-- FROM Country;
WITH C AS
(
  SELECT Country_ID,
    ROW_NUMBER() OVER(PARTITION BY Country_ID
                      ORDER BY (SELECT NULL)) AS n
  FROM Country
)
DELETE FROM C
WHERE n > 1;