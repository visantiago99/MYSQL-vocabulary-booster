SELECT C.ContactName AS 'Nome',
C.Country AS 'País',
COUNT(*) AS 'Número de compatriotas'
FROM w3schools.customers AS C,
w3schools.customers AS B
WHERE C.Country = B.Country AND C.ContactName <> B.ContactName
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
