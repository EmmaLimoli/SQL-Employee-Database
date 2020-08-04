-- list dets for each employee, employee #, name, sex, salary
SELECT
	employees_data.emp_no,
	employees_data.last_name,
	employees_data.first_name,
	employees_data.sex,
	salaries.salary
from employees_data
inner join salaries ON
employees_data.emp_no=salaries.emp_no;
	

--list name, hire date for employees hired in 1986

SELECT first_name, last_name, hire_date
FROM employees_data
WHERE (hire_date BETWEEN '1986-01-01' AND '1986-12-31')
order by hire_date;
	
--list the manager of each dept. dept#, dept name, man employee #, name

SELECT 
	dept_manager.dept_no,
	depart_types.dept_name,
	dept_manager.emp_no,
	employees_data.last_name, 
	employees_data.first_name
FROM dept_manager
inner Join depart_types 
ON dept_manager.dept_no=depart_types.dept_no
inner JOIN employees_data
ON employees_data.emp_no=dept_manager.emp_no
ORDER by dept_name;
	
--list dept of each emp, emp#, name, dept name
SELECT
	employees_data.emp_no
	employees_data.last_name
	employees_data.first_name
	depart_types.dept_name,


--list name, sex for empl with 'Hercules' and last name with 'B'

--list emp in sales, emp#, name, dept name

--list emp in sales/dev, emp#, name, dept name

--desc order list freq count of emp name, how many share same last name