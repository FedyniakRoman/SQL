-- В рамках БД audiohosting:

-- Создать таблицу комментариев (comments) с использованием механизма валидации данных в SQL

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    track_id INT NOT NULL,
    comment_text TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (track_id) REFERENCES tracks(id)
    );

--------

--   Добавить в таблицу комментариев несколько записей

INSERT INTO comments (user_id, track_id, comment_text) VALUES
(1, 2, "Super"),
(2,3,"Best"),
(2,4, "Cool"),
(2,1, "This is track on repeat"),
(3,2, "interesting!");

------

-- Вывести ко-во комментариев на каждый трек (в упорядоченном виде)

SELECT 
    track_id, 
    COUNT(*) AS comment_count
FROM 
    comments
GROUP BY 
    track_id
ORDER BY 
    comment_count DESC, track_id ASC;