--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT * FROM department_manager

--need to merge with departments and employees table

SELECT employees.first_name,employees.last_name,department_manager.dep_no,departments.dept_name, department_manager.emp_no 
FROM department_manager 
	INNER JOIN employees ON department_manager.emp_no=employees.emp_no
	INNER JOIN departments ON department_manager.dep_no=departments.dept_no;
	
--store as view
CREATE VIEW temp_table AS
SELECT employees.first_name,employees.last_name,department_manager.dep_no,departments.dept_name, department_manager.emp_no 
FROM department_manager 
	INNER JOIN employees ON department_manager.emp_no=employees.emp_no
	INNER JOIN departments ON department_manager.dep_no=departments.dept_no;

--shortcut is F5
--select * from temp_table limit 5





