-- break the csv into tables, there should be a dept. and employee, title another table, 
-- change often vs. constant, create wireframes and then export data, design relationship and department table links
--create the heirarchy, independent tables, employee depends on the title table

-- CSV depart types (dep#, dept name), add primary keys
CREATE TABLE depart_types(
	dept_no VARCHAR,
	dept_name VARCHAR(30)
);

ALTER TABLE depart_types
ADD COLUMN id serial primary key;

select * 
from depart_types;

-- title CSV (title id & title), added primary key
create table titles(
	title_id VARCHAR,
	title VARCHAR(30)
);

ALTER TABLE titles
ADD COLUMN id serial primary key;

select *
from titles;

-- dept manager CSV, (dep#, emp#), added primary key
drop table dept_manager;

create table dept_manager(
	dept_no VARCHAR,
	emp_no VARCHAR
);

ALTER TABLE dept_manager
ADD COLUMN id serial primary key;

select *
from dept_manager;

-- dept employees CSV (emp# and dept#), added primary key
create table dept_employee(
	emp_no VARCHAR,
	dept_no VARCHAR
);

ALTER TABLE dept_employee
ADD COLUMN id serial primary key;

select *
from dept_employee;

-- employees CSV (emp title, birthdate, name, sex, hire date) with primary key
create table employees_data(
	emp_no VARCHAR,
-- employee title id = title_id in title
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR, 
	last_name VARCHAR, 
	sex VARCHAR(1), 
	hire_date DATE
);

ALTER TABLE employees_data
ADD COLUMN id serial primary key;

select *
from employees_data;

-- salaries CSV (emp# & salary) with primary key
create table salaries(
	emp_no VARCHAR,
	salary INT
);	

ALTER TABLE salaries
ADD COLUMN id serial primary key;

select *
from salaries;

