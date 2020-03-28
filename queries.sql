--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM salaries
JOIN employees
ON salaries.emp_no=employees.emp_no;

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "Last name frequency"
FROM employees
GROUP BY last_name
ORDER BY "Last name frequency" DESC;

--List employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.
SELECT manager.dept_no, department.dept_name, employees.emp_no, employees.first_name, employees.last_name, manager.from_date, manager.to_date 
FROM manager
JOIN department 
ON department.dept_no = manager.dept_no
JOIN employees 
ON employees.emp_no = manager.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.first_name, employees.last_name, department.dept_name
FROM employees
JOIN department_emp
ON department_emp.emp_no=employees.emp_no
JOIN department
ON department_emp.dept_no=department.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%'

--List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.first_name, employees.last_name, department.dept_name
FROM employees
JOIN department_emp
ON department_emp.emp_no=employees.emp_no
JOIN department
ON department_emp.dept_no=department.dept_no
WHERE dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.first_name, employees.last_name, department.dept_name
FROM employees
JOIN department_emp
ON department_emp.emp_no=employees.emp_no
JOIN department
ON department_emp.dept_no=department.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

--Search your ID number
SELECT * FROM employees
WHERE emp_no = 499942


SELECT * FROM employees
