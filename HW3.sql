(1) Вывести данные о товарах (проекция: названиетовара, цена, названиекатегории, названиекомпаниипоставщика)

SELECT
		Products.ProductName,
		Products.Price AS Price_full,
    Categories.CategoryName,
    Suppliers.SupplierName
  
FROM Products

JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
----------------------------------------------------------
(2) Вывести список стран, которые поставляют морепродукты
SELECT DISTINCT
	Suppliers.Country
FROM Products

JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

WHERE
	Categories.CategoryName = "Seafood"
    ------------------------------------------------------
(3) Вывести два самых дорогих товара из категории Beverages из USA
SELECT *
FROM Products

JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

WHERE
	Categories.CategoryName = "Beverages"
	AND
	Suppliers.Country = "USA"
	
ORDER BY Price DESC
LIMIT 2
----------------------------------------------
(4) Вывести название и стоимость в USD одного самого дорогого проданного товара
SELECT
	Products.ProductName,
	Products.Price * 1.07 Price_usd
FROM OrderDetails

JOIN Products ON Products.ProductID = OrderDetails.ProductID

ORDER BY Price DESC
LIMIT 1
--------------------------------------------
(5) Дайте короткий ответ на вопрос: в чем отличие БД от СУБД

БД - структурированный набор данных
СУБД - инструмент(прикладное ПО)






