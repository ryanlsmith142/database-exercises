CREATE DATABASE ad_lister_db;

USE ad_lister_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(250) NOT NULL,
    password VARCHAR(250) NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS ads;

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(250) NOT NULL,
    description TEXT NOT NULL,
    user_id INT UNSIGNED,
    PRIMARY KEY(id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS ad_category;

CREATE TABLE ad_category (
    ad_id INT UNSIGNED,
    category_id INT UNSIGNED,
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);

DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL,
    PRIMARY KEY(id)
);

SELECT users.email FROM users
JOIN ads ON users.id = ads.user_id
WHERE title = 'Sharknado';

SELECT * FROM categories
JOIN ad_category ON categories.id = ad_category.category_id
JOIN ads ON ad_category.ad_id = ads.id;

SELECT ads.title FROM ads
JOIN ad_category ON ad_category.ad_id = ads.id
JOIN categories ON ad_category.category_id = categories.id;

SELECT ads.title FROM ads
JOIN users ON users.id = ads.user_id
WHERE users.email = 'dwindibank29@bbc.co.uk'