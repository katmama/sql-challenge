--Salary and Employee Info
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

--Employee Hire Date
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--Manager Info
SELECT dept_manager.emp_no, departments.dept_no, departments.dept_name, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no;

--Employee by Dept
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no;

--Hercules query
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Sales dept query
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'

--Sales and Development query
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--count of employees
SELECT last_name, COUNT(last_name) AS "Shared Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Shared Last Name" DESC;
