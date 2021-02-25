--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select * from department_employees
select department_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM departments
	JOIN department_employees ON department_employees.dep_no=departments.dept_no
	JOIN employees ON employees.emp_no=department_employees.emp_no
WHERE 
	dept_name = 'Sales'
	OR dept_name = 'Development';
