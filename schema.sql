DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR
);


DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
emp_no VARCHAR,
dept_no VARCHAR,
PRIMARY KEY(emp_no, dept_no)
);


DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no VARCHAR PRIMARY KEY
);


DROP TABLE IF EXISTS employees2;

CREATE TABLE employees2 (
emp_no VARCHAR PRIMARY KEY,
emp_title_id VARCHAR,
birth_date VARCHAR,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date VARCHAR
);


DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
emp_no VARCHAR PRIMARY KEY,
salary INTEGER
);


DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
title_id VARCHAR PRIMARY KEY,
title VARCHAR
);