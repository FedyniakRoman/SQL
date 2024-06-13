-- В рамках БД "видео-хостинг":


-- Создать таблицы реакций и комментариев (на видео)

-- Добавить несколько записей в каждую таблицу выше

CREATE TABLE reactions ( 
    id int primary key auto_increment,
    created_at timestamp,
    video_id int,
    value int,
    author_id int,

    FOREIGN KEY (video_id) REFERENCES videos(video_id),
    FOREIGN KEY (author_id) REFERENCES users(user_id)
  );


  CREATE TABLE comments ( 
    id int primary key auto_increment,
    created_at timestamp,
    video_id int,
    author_id int,
    comment_text TEXT NOT NULL,

 FOREIGN KEY (video_id) REFERENCES videos(video_id),
 FOREIGN KEY (author_id) REFERENCES users(user_id)
  );