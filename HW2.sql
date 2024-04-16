Вывести данные о товарах (проекция: название, ценасоскидкой0.5процента) по убыванию цены.

SELECT CustomerName, Price * 0.995 AS Price_down0.5
FROM Products
ORDER BY Price_down DESC;

----------------------


Вывести товары в диапазоне цены от 50 до 200 EUR (проекция: название, ценаснаценкой30процентов) по возрастанию цены.

SELECT CustomerName, Price * 1.3 AS Price_up30
FROM Products
WHERE Price BETWEEN 50 AND 200
ORDER BY Price_up30 ASC;

-----------------------------


Вывести всех клиентов, кроме тех, что из USA и UK.

SELECT *
FROM Customers
WHERE Country NOT IN ('USA', 'UK');


--------------------------------

Вывести товары из категорий 2 и 5 (проекция: всеимеющиесяполя, ценавдолларах)

SELECT *, Price * Price_eur_usd AS Price_usd
FROM Products
WHERE CategoryID IN (2, 5);