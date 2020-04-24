-- Выводим ID и добавку вина, ID которого кратно рандомному числу
INSERT Country (Country_ID,Country_name,Region)
SELECT (
    SELECT MAX(Country_ID)+123
    FROM Country
), 'СССР','Рай Центр'
FROM Country
WHERE Country_ID % 999=0
