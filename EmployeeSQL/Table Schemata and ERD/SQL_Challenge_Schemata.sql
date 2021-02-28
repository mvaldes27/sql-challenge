CREATE TABLE Employees (
    emp_no VARCHAR,
    emp_title VARCHAR,
    birth_date VARCHAR,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date VARCHAR,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Department_Employees (
    emp_no VARCHAR,
    dep_no VARCHAR,
    CONSTRAINT pk_Department_Employees PRIMARY KEY (
        emp_no, dep_no
     )
);

CREATE TABLE Departments (
    dept_no VARCHAR,
    dept_name VARCHAR,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE Department_Manager (
    dep_no VARCHAR,
    emp_no VARCHAR,
    CONSTRAINT pk_Department_Manager PRIMARY KEY (
        dep_no, emp_no
     )
);

CREATE TABLE Salaries (
    emp_no VARCHAR,
    salary INTEGER,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Titles (
    title_id VARCHAR,
    title VARCHAR,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

--import csv files in order of table creation before altering tables
ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_dep_no FOREIGN KEY(dep_no)
REFERENCES Departments (dept_no);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_dep_no FOREIGN KEY(dep_no)
REFERENCES Departments (dept_no);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);




