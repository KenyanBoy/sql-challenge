
CREATE TABLE Departments (
  dept_no VArchar PRIMARY KEY,
  Name VARCHAR(30) NOT NULL
);

CREATE TABLE Department_manager (
    dept_no Varchar NOT NULL,
    emp_no int   NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE Employees (
    emp_no int NOT NULL,
    emp_title_id varchar NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(200)   NOT NULL,
    last_name varchar(200)   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
    emp_no int Not NUll,
    salary varchar(200)   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Titles (
    title_id Varchar   NOT NULL,
    title varchar(200)   NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE Department_employment (
	emp_no int   NOT NULL,
    dept_no Varchar   NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);

--Tried to alter the variable type so the Panda (bonus) would work properly...
alter table salaries
	alter column salary type varchar(200),
	alter column salary set int;



drop table Departments;
drop table Department_manager;
drop table Employees CASCADE;
drop table salaries CASCADE;
drop table Titles;
drop table Department_employment;

