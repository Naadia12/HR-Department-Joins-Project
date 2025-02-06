Listing employees and their departments
select name, department_name
from employees
inner join departments
on employees.department_id = departments.department_id;

Showing department names and the total salary for each department
SELECT department_name, SUM(salary) AS total_salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY department_name;


List all employees and their department names, but only show the employees whose employee_id is greater than 3.
SELECT name, department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
WHERE employee_id > 3;

List all departments, along with employees working in them. Even if a department has no employees, it should still be listed.
SELECT department_name, name
FROM departments
LEFT JOIN employees
ON employees.department_id = departments.department_id;

Find the total salary for each department and average salary for each department
SELECT department_name, SUM(salary) AS total_salary, AVG(salary) AS average_salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY department_name;

Find the total salary for each department  and the minimum salary for each department.
SELECT department_name, MIN(salary) AS minimum_salary, SUM(salary) AS total_salary
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id
GROUP BY department_name;
