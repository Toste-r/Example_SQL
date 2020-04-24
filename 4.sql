-- Вывести номера и названия вин, у которых процент сахара между 9 и 12
SELECT Feedstock_ID, Name_wine
FROM [Wine].[dbo].[Wine]
WHERE Alcohol_sugar_ID IN
    (SELECT Alcohol_sugar_ID
    FROM [Wine].[dbo].[Alcohol_sugar]
    WHERE Percentage_of_sugar BETWEEN '9' AND '12')

