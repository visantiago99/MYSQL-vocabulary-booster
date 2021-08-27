SELECT C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS C
INNER JOIN w3schools.shippers AS S
INNER JOIN w3schools.orders AS O
ON C.CustomerID = O.CustomerID
AND S.ShipperID = O.ShipperID
WHERE S.ShipperName = 'Speedy Express' OR S.ShipperName = 'United Package'
ORDER BY C.ContactName, S.ShipperName, O.OrderDate;
