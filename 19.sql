-- Вдруг страну захотят назвать в честь Вина?
UPDATE Country SET Country_name =
(
    SELECT Name_wine FROM dbo.Wine WHERE Feedstock_ID = 37
)
WHERE Country_ID = 1080