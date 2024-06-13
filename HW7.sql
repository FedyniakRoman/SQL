-- Вывести товары, добавив поле цена со наценкой Price_up в случае, если:

-- цена от 200 EUR — наценка 0.5%

-- цена от 20 EUR — наценка 1.5%


SELECT 
   *,
    CASE 
        WHEN Price >= 200 THEN Price * 1.005
        WHEN Price >= 20 THEN Price * 1.015
        ELSE Price
    END AS Price_up
FROM 
    Products;

--------------------------------------------------
-- Создать новую базу данных webstore

-- Создать таблицу products (поля - на ваше усмотрение)


CREATE DATABASE webstore;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price FLOAT NOT NULL,
    quantity INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);