DELETE FROM Country WHERE Country_ID IN
(
    SELECT Country_ID
    FROM Country 
    WHERE Region = 'Рай Центр'
    AND Country_ID % 2 = 0
)