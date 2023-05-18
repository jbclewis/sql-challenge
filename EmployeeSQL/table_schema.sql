-- Create table schema.

-- Create deptartments table. (dept_no,dept_name)
DROP TABLE departments

CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES dept_emp(dept_no)
);

select * from departments


-- Create employees table. (emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date)
DROP TABLE employees

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL
);

select * from employees


--Create dept_emp table. (emp_no,dept_no)
DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no INT NOT NULL PRIMARY KEY,
	dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp


-- Create dept_managers table. (dept_no,emp_no)
DROP TABLE dept_managers

CREATE TABLE dept_managers (
    dept_no VARCHAR (10) PRIMARY KEY,
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_managers



--Create salaries table. (emp_no,salary)
DROP TABLE salaries

CREATE TABLE salaries (
	emp_no BIGINT NOT NULL PRIMARY KEY,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries


--Create titles table. (title_id,title)
DROP TABLE titles

CREATE TABLE titles (
	title_id VARCHAR(20) NOT NULL PRIMARY KEY,
	title VARCHAR(20) NOT NULL
);

select * from titles