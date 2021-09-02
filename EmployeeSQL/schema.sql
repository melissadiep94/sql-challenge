CREATE TABLE departments(
	dep_no VARCHAR Primary Key Not NULL,
	dept_name VARCHAR NOT NULL
); 

CREATE TABLE titles (
	emp_title_id VARCHAR   NOT NULL,
	title VARCHAR   NOT NULL,
	CONSTRAINT pk_titles PRIMARY KEY (emp_title_id)
);

CREATE TABLE employees(
	emp_no Integer Primary Key Not NULL,
	emp_title_id VARCHAR Not NULL,
	birth_date date Not NULL,
	first_name VARCHAR Not NULL,
	last_name VARCHAR Not NULL,
	sex VARCHAR Not NULL,
	hire_date date Not NULL,
		FOREIGN KEY(emp_title_id) REFERENCES titles (emp_title_id)
); 

CREATE TABLE salaries(
	emp_no Integer Primary Key Not NULL,
	salaries Integer Not NULL,
		FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
); 

CREATE TABLE dept_emp(
	emp_no Integer Not NULL,
	dep_no VARCHAR Not NULL,
		PRIMARY KEY (emp_no, dep_no),
 		FOREIGN KEY(dep_no) REFERENCES departments (dep_no),
 		FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
); 

CREATE TABLE dep_manager(
	dep_no VARCHAR Not NULL,
	emp_no Integer Primary Key Not NULL,
		FOREIGN KEY(dep_no) REFERENCES departments (dep_no),
		FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
); 
