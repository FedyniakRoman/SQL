-- В рамках БД "интернет-магазин (песочница)" напишите след/запросы:

-- Вывести страны, в которых ко-во клиентов от 10 до 20 (вкл.)

SELECT 
    Country, 
    COUNT(*) AS Customers_Count
FROM 
    Customers
GROUP BY 
    Country
HAVING 
    COUNT(*) BETWEEN 10 AND 20;
---------


-- Вывести ТОП-3 стран по ко-ву клиентов

    SELECT 
    Country, 
    COUNT(*) AS Top_Country
FROM 
    Customers
GROUP BY 
    Country
ORDER BY 
    Top_Country DESC
LIMIT 3;

------------

-- Вывести имена клиентов, у которых два и более заказов

SELECT 
    Customers.CustomerName,
    COUNT(Orders.OrderID) AS Orders_Count
FROM 
    Customers
JOIN 
    Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY 
    Customers.CustomerID, Customers.CustomerName
HAVING 
    COUNT(Orders.OrderID) >= 2;