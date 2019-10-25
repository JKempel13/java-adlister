use adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
Username VARCHAR(100),
Email VARCHAR(100),
Password VARCHAR(20)
);


CREATE TABLE ads (
id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id int UNSIGNED,
title VARCHAR (100),
description VARCHAR(255),
FOREIGN KEY (user_id) REFERENCES users (id)
);

SELECT username
FROM users
         JOIN ads -- same as INNER JOIN
              ON users.id = ads.user_id;

