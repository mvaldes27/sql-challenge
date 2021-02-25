CREATE TABLE Department_Manager (
    dep_no VARCHAR,
    emp_no VARCHAR,
    CONSTRAINT pk_Department_Manager PRIMARY KEY (
        dep_no, emp_no
     )
);

select * FROM Department_Manager


