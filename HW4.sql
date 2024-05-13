1.Вывести общее ко-во поставщиков не из UK и не из China

SELECT COUNT(*) AS total_suppliers
FROM Suppliers
WHERE Country NOT IN ('UK', 'China');
--------------------------------------------------------
2. Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5

SELECT 
    AVG(Products.Price) AS avg_price,
    MAX(Products.Price) AS max_price,
    MIN(Products.Price) AS min_price,
    COUNT(Products.ProductID) AS product_count
FROM 
    Products
JOIN 
    Categories ON Products.CategoryID = Categories.CategoryID
WHERE 
    Categories.CategoryID IN (3, 5);

--------------------------------------------------------

3. Вывести общую сумму проданных товаров

    SELECT 
    SUM(OrderDetails.Quantity * Products.Price) AS total_sales
FROM 
    OrderDetails
JOIN 
    Products ON OrderDetails.ProductID = Products.ProductID;

    --------------------------------------------------------

4. Вывести данные о заказах (номерзаказа, имяклиента, странаклиента, фамилияменеджера, названиекомпанииперевозчика)


    SELECT
    Orders.OrderID AS order_number,
    Customers.CustomerName AS customer_name,
    Customers.Country AS customer_country,
    Employees.LastName AS manager_lastname,
    Shippers.ShipperName AS shipper_company
FROM 
    Orders
JOIN 
    Customers ON Orders.CustomerID = Customers.CustomerID
JOIN 
    Employees ON Orders.EmployeeID = Employees.EmployeeID
JOIN 
    Shippers ON Orders.ShipperID = Shippers.ShipperID;

     --------------------------------------------------------

5. Вывести сумму, на которую было отправлено товаров клиентам в Germany

SELECT 
    SUM(OrderDetails.Quantity * Products.Price) AS total_amount
FROM 
    Orders
JOIN 
    Customers ON Orders.CustomerID = Customers.CustomerID
JOIN 
    OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN 
    Products ON OrderDetails.ProductID = Products.ProductID
WHERE 
    Customers.Country = 'Germany';