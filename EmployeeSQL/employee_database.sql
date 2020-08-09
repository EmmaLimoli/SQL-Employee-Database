-- drop tables
drop table if exists depart_types;
drop table if exists titles;
drop table if exists dept_manager;
drop table if exists dept_employee;
drop table if exists employees_data;
drop table if exists salaries;


-- CSV depart types (dep#, dept name), add primary keys
CREATE TABLE depart_types(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	primary key(dept_no)
);

select * 
from depart_types;


-- employees CSV (emp title, birthdate, name, sex, hire date) with primary key
create table employees_data(
	emp_no INTEGER primary key,
-- employee title id = title_id in title
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL, 
	sex VARCHAR(1) NOT NULL, 
	hire_date DATE NOT NULL
);

select *
from employees_data;

-- dept employees CSV (emp# and dept#), added primary key/foreign keys to attach them
create table dept_employee(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees_data(emp_no),
	FOREIGN KEY (dept_no) REFERENCES depart_types(dept_no),
	PRIMARY KEY(emp_no, dept_no)
	
);

select *
from dept_employee;

-- dept manager CSV, (dep#, emp#), added primary key/foreign key to attach
create table dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES depart_types(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees_data (emp_no),
	primary key (dept_no, emp_no)
);

select *
from dept_manager;

-- salaries CSV (emp# & salary) with primary key
create table salaries(	
	emp_no INTEGER NOT NULL,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees_data(emp_no),
	primary key(emp_no)

);	

select *
from salaries;

-- title CSV (title id & title), added primary key
create table titles(
-- employee title id = title_id in title
	title_id VARCHAR primary key,
	title VARCHAR(30) NOT NULL
	
);

select *
from titles;


