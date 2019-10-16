-- # TODO: write a query that shows each department along with the name of the current manager for that department.

USE employees;

SELECT * FROM employees limit 10;

# show each department - departments

# with each manager name - dept_manager

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS 'Full Name'

FROM employees

JOIN dept_manager ON employees.emp_no = dept_manager.emp_no

JOIN departments ON dept_manager.dept_no = departments.dept_no

WHERE dept_manager.to_date > NOW()

ORDER BY departments.dept_name;

# TODO: Find the name of all departments currently managed by women.


SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS 'Full Name'

FROM employees

JOIN dept_manager ON employees.emp_no = dept_manager.emp_no

JOIN departments ON dept_manager.dept_no = departments.dept_no

WHERE employees.gender = 'F' AND dept_manager.to_date > NOW()

ORDER BY departments.dept_name;


