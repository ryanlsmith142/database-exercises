# TODO: Find all the employees with the same hire date as employee 101010 using a subquery.


SELECT * from employees
WHERE hire_date IN (
    select hire_date FROM employees WHERE emp_no = '101010'
);

# TODO: Find all the titles held by all employees with the first name Aamod

SELECT title, COUNT(title) from titles
WHERE emp_no IN (
        SELECT emp_no FROM employees
        WHERE first_name = 'Aamod'
) GROUP BY title
ORDER BY title;



# TODO: Find all the current department managers that are female.

SELECT first_name, last_name FROM employees
WHERE emp_no IN (
    SELECT emp_no from dept_manager
    WHERE to_date > NOW()
    )
AND gender = 'F';



