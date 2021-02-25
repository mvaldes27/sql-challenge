CREATE TABLE Department_Manager (
    dep_no VARCHAR,
    emp_no VARCHAR,
    CONSTRAINT pk_Department_Manager PRIMARY KEY (
        dep_no, emp_no
     )
);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_dep_no FOREIGN KEY(dep_no)
REFERENCES Departments (dept_no);


ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

select * FROM Department_Manager





