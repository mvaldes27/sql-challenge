--Question 1: List the following details of each employee: employee number, last name, first name, sex, and salary

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary  
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no
ORDER BY emp_no;

--Question 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE RIGHT(hire_date, 4) = '1986';
	
--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT department_manager.dep_no,departments.dept_name, department_manager.emp_no,employees.first_name,employees.last_name 
FROM department_manager 
	INNER JOIN employees ON department_manager.emp_no=employees.emp_no
	INNER JOIN departments ON department_manager.dep_no=departments.dept_no;
	
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select department_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM departments
	JOIN department_employees ON department_employees.dep_no=departments.dept_no
	JOIN employees ON employees.emp_no=department_employees.emp_no
ORDER BY emp_no;	
	
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex 
FROM employees
WHERE
	first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select department_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM departments
	JOIN department_employees ON department_employees.dep_no=departments.dept_no
	JOIN employees ON employees.emp_no=department_employees.emp_no
WHERE dept_name = 'Sales'
ORDER BY emp_no;

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select department_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM departments
	JOIN department_employees ON department_employees.dep_no=departments.dept_no
	JOIN employees ON employees.emp_no=department_employees.emp_no
WHERE 
	dept_name = 'Sales'
	OR dept_name = 'Development'
ORDER BY emp_no;

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT
	last_name,
	COUNT (last_name)
FROM
	employees
GROUP BY
	last_name
ORDER BY count(last_name) DESC;



