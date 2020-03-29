DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS department_emp;
DROP TABLE IF EXISTS manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;

CREATE TABLE department (
  dept_no character varying(10) NOT NULL,
  dept_name character varying(45) NOT NULL
);

CREATE TABLE department_emp (
	emp_no integer NOT NULL,
	dept_no character varying(10) NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);

CREATE TABLE manager (
	dept_no character varying(10) NOT NULL,
	emp_no integer NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);

CREATE TABLE employees (
	emp_no integer NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	gender VARCHAR(1) check (gender in ('F','M')),
	hire_date date NOT NULL
);

CREATE TABLE salaries (
	emp_no integer NOT NULL,
	salary integer NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL	
);

CREATE TABLE titles (
	emp_no integer NOT NULL,
	title VARCHAR(50) NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);
