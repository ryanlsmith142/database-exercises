USE codeup_test_db;

DROP TABLE IF EXISTS books;

CREATE TABLE books(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(250) NOT NULL,
    author_first_name VARCHAR(50) DEFAULT 'NONE',
    author_last_name VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    description VARCHAR(250),
    release_year INT(4),
    PRIMARY KEY (id)
);
