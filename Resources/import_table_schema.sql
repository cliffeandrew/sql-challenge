--EmployeeSQL SQL-challenge homework

--Drop tables if they exist
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_manager;

--Create Pewlett Hackard's tables
CREATE TABLE employees (
	emp_no integer NOT NULL,
	emp_title_id character varying(255) NOT NULL,
	birth_date timestamp without time zone DEFAULT now() NOT NULL,
	first_name character varying(255) NOT NULL,
	last_name character varying(255) NOT NULL,
	sex character varying(1) NOT NULL,
	hire_date timestamp without time zone DEFAULT now() NOT NULL
);

CREATE TABLE titles (
	title_id character varying(255) NOT NULL,
	title character varying(255) NOT NULL
);

CREATE TABLE salaries (
	emp_no integer NOT NULL,
	salary integer NOT NULL
);

CREATE TABLE dept_emp (
	emp_no integer NOT NULL,
	dept_no character varying(255) NOT NULL
);

CREATE TABLE departments (
	dept_no character varying(255) NOT NULL,
	dept_name character varying(255) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no character varying(255) NOT NULL,
	emp_no integer NOT NULL
);

select * from departments
select * from dept_manager
select * from titles