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

# TODO: Find the current titles of employees currently working in the Customer Service department.

SELECT titles.title, COUNT(titles.title) FROM titles

JOIN employees ON employees.emp_no = titles.emp_no

JOIN dept_emp ON dept_emp.emp_no = employees.emp_no

JOIN departments on departments.dept_no = dept_emp.dept_no

WHERE departments.dept_name = 'Customer Service' AND titles.to_date > NOW()

GROUP BY titles.title;

# TODO: Find the current salary of all current managers.

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS 'Full Name', salaries.salary

FROM salaries

JOIN employees ON employees.emp_no = salaries.emp_no

JOIN dept_manager ON employees.emp_no = dept_manager.emp_no

JOIN departments ON dept_manager.dept_no = departments.dept_no

WHERE dept_manager.to_date > NOW() AND salaries.to_date > NOW()

ORDER BY departments.dept_name;



