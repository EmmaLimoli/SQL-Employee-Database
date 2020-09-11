# SQL Project
Creating A SQL Database For Employees

How Was This Achieved?
In this project, I used six different CSVs to create an employee database at a company. The first step in this project was to do data modeling to figure out what CSVs lined up together. My goal was to figure out how I could create a path of the CSVs to create a database that could be used by the company.

First Step: Data Modeling:

![data modeling](https://github.com/EmmaLimoli/sql-challenge/blob/master/EmployeeSQL/ERD_image/QuickDBD-export%20(1).png)

Second Step: Create Tables And Queries
Once the data modeling was complete, I created the tables and imported the CSVs into Postgres. The schema file can be found in in employees_database.sql(https://github.com/EmmaLimoli/sql-challenge/blob/master/EmployeeSQL/employee_database.sql). I created six different tables to match the CSVs and then I created a new sql file called queries.sql to hold all of the queries for the database. This can be found in queries.sql(https://github.com/EmmaLimoli/sql-challenge/blob/master/EmployeeSQL/queries.sql). In the queries file, I created eight different queries to help sift through the data and create an ideal database. 

The first query joined two tables to pull employees, employee numbers, salary, name and sex. Another query I joined three tables to look at the department name, department number, manager employee number, and employee name. In a query toward the end of the project, I pulled out specific information for two departments. I joined three different CSVs to pull out employee name, employee number, and department name in the specific departments. These are just a few of the queries I created from the CSVs.

Third Step: Create Data Visualizations
Once the queries were created, I took the data and created visualizations of the datbase. I took three of the sql tables and put it into Jupyter Notebook to be read. This can be found in data_visualization.ipynb (https://github.com/EmmaLimoli/sql-challenge/blob/master/EmployeeSQL/data_visualization.ipynb). 

The first visualization I created was a bar graph of the average salaries for each department.

![bargraph of avg salaries of departments] (https://github.com/EmmaLimoli/sql-challenge/blob/master/EmployeeSQL/ERD_image/bargraph.png)

Project using SQL to analyze data of employees at a fake company by creating queries.
