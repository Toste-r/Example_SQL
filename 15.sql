-- Выводим ID и добавку вина, ID которого кратно рандомному числу
DECLARE @rnd int;
SELECT @rnd = ABS(CHECKSUM(NEWID()) % 10)

SELECT F.Feedstock_ID, Additives, @rnd AS TotSamiRandom
FROM dbo.Wine W JOIN Feedstock F ON W.Feedstock_ID=F.Feedstock_ID
GROUP BY F.Feedstock_ID, Additives
HAVING F.Feedstock_ID % @rnd = 0