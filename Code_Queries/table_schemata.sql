DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS department_emp;
DROP TABLE IF EXISTS manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;

CREATE TABLE department (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(45) NOT NULL
);

CREATE TABLE department_emp (
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

CREATE TABLE manager (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	gender VARCHAR(1) CHECK (gender IN ('F','M')),
	hire_date DATE NOT NULL
);

CREATE TABLE salaries (
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL	
);

CREATE TABLE titles (
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	title VARCHAR(50) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);
