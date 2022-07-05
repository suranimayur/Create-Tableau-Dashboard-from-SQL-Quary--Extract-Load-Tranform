# Create-Tableau-Dashboard-from-SQL-Quary--Extract-Load-Tranform
Create Tableau Dashboard from SQL Quary

Welcome to SQL - Tableau Project.

In this project, we will create four SQL queries in MYSQL from empployee database and will create TABLUEA dashboard for each SQL Query.

TASK - 01 - Compare the number of male managers to the number of female managers from different departments for each year, starting from 1990.
Solution- In order to create above query, please load employees_mod database in MySQL Workbench.

Then write below query

SELECT 
    d.dept_name,
    ee.gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    e.calender_year,
    CASE
        WHEN
            YEAR(dm.to_date) >= e.calender_year
                AND YEAR(dm.from_date) <= e.calender_year
        THEN
            1
        ELSE 0
    END AS active
FROM
    (SELECT 
        YEAR(hire_date) AS calender_year
    FROM
        t_employees
    GROUP BY calender_year) e
        CROSS JOIN
    t_dept_manager dm
        JOIN
    t_departments d ON dm.dept_no = d.dept_no
        JOIN
    t_employees ee ON dm.emp_no = ee.emp_no
ORDER BY dm.emp_no , calender_year; 

Then Export it to local machine with name Task 02

Task - 03 - Compare the average salary of female versus male employees in the entire company until year 2002 and add a filter allowing you to see that per each department

SELECT 
    e.gender,
    d.dept_name,
    ROUND(AVG(s.salary), 2) AS salary,
    YEAR(s.from_date) AS calender_year
FROM
    t_salaries s
        JOIN
    t_employees e ON s.emp_no = e.emp_no
        JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
        JOIN
    t_departments d ON d.dept_no = de.dept_no
GROUP BY d.dept_no , e.gender , calender_year
HAVING calender_year <= 2002
ORDER BY d.dept_no;

TASK-4 Create an SQL stored procedure that will allow you to obtain the average male and female salary per department within a certain salary range. Let this range be defined by two values the user can insert when calling the procedure.

Finally, visualize the obtained result-set in Tableau as a double bar chart.

DROP PROCEDURE IF EXISTS filter_salary;
delimiter $$
CREATE procedure	filter_salary(In p_min_salary float, IN p_max_salary float)
BEGIN
select
		e.gender,d.dept_name, AVG(s.salary) as Avg_Salary
from 
		t_salaries s 
        join
        t_employees e on s.emp_no = e.emp_no
        join
        t_dept_emp de on de.emp_no = e.emp_no
        join 
        t_departments d on d.dept_no = de.dept_no
        where s.salary between p_min_salary and p_max_salary 
group by d.dept_no, e.gender;
END $$
delimiter ;

call filter_salary(50000,90000);
