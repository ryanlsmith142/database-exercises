USE codeup_test_db;

DROP TABLE IF EXISTS books;

CREATE TABLE books(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author VARCHAR(100) NOT NULL DEFAULT 'Unknown',
    date_published DATE NOT NULL,
    description
);