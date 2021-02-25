CREATE TABLE Department_Employees (
    emp_no VARCHAR,
    dep_no VARCHAR,
    CONSTRAINT pk_Department_Employees PRIMARY KEY (
        emp_no, dep_no
     )
);

ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_dep_no FOREIGN KEY(dep_no)
REFERENCES Departments (dept_no);

select * FROM Department_Employees





