USE employees;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) as full_name, birth_date as DOB FROM employees limit 10;

SHOW TABLES;

SELECT * FROM dept_manager;

DESCRIBE SALARIES;

DESCRIBE TITLES;

USE codeup_test_db;

SHOW TABLES;

SELECT * FROM albums limit 10;

ALTER TABLE albums
    ADD UNIQUE (name, artist);

INSERT INTO albums (
    artist,
    name,
    release_date,
    sales,
    genre
)
VALUE('Michael Jackson','Thriller',1982,47.3,'Pop');

SHOW TABLES;











