SELECT DISTINCT last_name FROM employees ORDER BY last_name desc  limit 10;

SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25' ORDER BY birth_date, hire_date desc limit 5;

SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25' ORDER BY birth_date, hire_date desc LIMIT 5 OFFSET 45;

