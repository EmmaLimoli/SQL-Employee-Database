# SQL Project
Create A SQL Database For Employees

The Goal:
To create an employee database using SQL and data visualizations to analyze the salaries in departments and throughout the company.

How Was This Achieved?
In this project, I used six different CSVs to create an employee database at a fake company. The first step in this project was to do data modeling to figure out what CSVs lined up together. I needed to figure out how I could link the CSVs to create a database that could be used by the company.

First Step: Data Modeling:

![data modeling](https://github.com/EmmaLimoli/sql-challenge/blob/master/EmployeeSQL/ERD_image/QuickDBD-export%20(1).png)

Second Step: Create Tables And Queries
Once the data modeling was complete, I created the tables and imported the CSVs into Postgres. The schema file can be found in ![employees_database.sql](https://github.com/EmmaLimoli/sql-challenge/blob/master/EmployeeSQL/employee_database.sql). I created six different tables to match the CSVs and then I created a new sql file called queries.sql to hold all of the queries for the database. This can be found in queries.sql(https://github.com/EmmaLimoli/sql-challenge/blob/master/EmployeeSQL/queries.sql). In the queries file, I created eight different queries to help sift through the data and create an ideal database. 

The first query joined two tables to pull employees, employee numbers, salary, name and sex. Another query I joined three tables to look at the department name, department number, manager employee number, and employee name. In a query toward the end of the project, I pulled out specific information for two departments. I joined three different CSVs to pull out employee name, employee number, and department name in the specific departments. These are just a few of the queries I created from the CSVs.

Third Step: Create Data Visualizations
Once the queries were created, I took the data and created visualizations of the datbase. I took three of the sql tables and put it into Jupyter Notebook to be read. This can be found in data_visualization.ipynb (https://github.com/EmmaLimoli/sql-challenge/blob/master/EmployeeSQL/data_visualization.ipynb). 

The first visualization I created was a bar graph of the average salaries for each department.

![bargraph of avg salaries of departments](https://github.com/EmmaLimoli/sql-challenge/blob/master/EmployeeSQL/ERD_image/bargraph.png)

Lastly, I created a histogram of the common salary ranges for employees in the company. I marked down the average salary range as well to provide a better understanding of where most employees fall. To create the histogram, I used bins to group the salaries. 

![histogram of common salary ranges for employees](https://github.com/EmmaLimoli/sql-challenge/blob/master/EmployeeSQL/ERD_image/histograph.png)

Tools Used:
SQL, Postgres, Pandas, Matplotlib, Numpy, Scipy, SQLAlchemy, data modeling

