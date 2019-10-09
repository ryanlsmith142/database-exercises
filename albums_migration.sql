USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date DATE UNSIGNED,
    sales FLOAT(5, 2) UNSIGNED,
    genre VARCHAR(50),
    PRIMARY KEY(id)
);



