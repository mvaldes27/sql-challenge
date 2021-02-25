CREATE TABLE Department_Employees (
    emp_no VARCHAR,
    dep_no VARCHAR,
    CONSTRAINT pk_Department_Employees PRIMARY KEY (
        emp_no, dep_no
     )
);

select * FROM Department_Employees



